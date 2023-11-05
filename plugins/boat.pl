# Notes: Pause type must be set to full.
# Need to add this to the Resources/GlobalLoads.txt file
#
#  2,0,TFFFE,shi.eqg,Loading Characters
#
use POSIX 'fmod';
use Class::Struct;
use Time::Local;

my $eq_to_real = 1.75;
my $eq_constant = 25.631186984314;

struct BoatWaypoint => {
  controllerName => '$',
  gridId => '$',
  zoneId => '$',
  connectingGridId => '$',
  connectingZoneId => '$',
  waitKey => '$',
  waypoint => '$'
};

struct BoatConfig => {
  controllerId => '$',
  timer => '$',
  cooldown => '$',
  spawned => '$',
  lastZonetime => '$',
  routeConfig => '@',
  currentBoat => '$',
  boats => '@'
};

struct RouteConfig => {
  npcId => '$',
  gridId => '$',
  zoneId => '$',
  waitKey => '$',
  runtimes => '@'
};

struct Boat => {
  npcId => '$',
  npc => '$',
  gridId => '$',
  zoneId => '$',
  speed => '$',
  wanderType => '$',
  location => '@',
  heading => '$',
  spawned => '$',
  wait => '$',
  waitKey => '$',
  currentWaypoint => '$',
  totalRouteDistance => '$',
  remainingPause => '$',
  startTime => '$',
  waitStartTime => '$',
  endTime => '$',
  waypoints => '@'
};

struct Waypoint => {
  location => '@',
  number => '$',
  heading => '$',
  pause => '$',
  runningTime => '$',
  estimatedZonetime => '$',
  distanceFromLastWaypoint => '$',
  distanceToNextWaypoint => '$',
  previousWaypoint => '$',
  previousWaypointLocation => '@',
  nextWaypoint => '$',
  nextWaypointLocation => '@',
  totalDistanceToHere => '$'
};


sub boatsOnEventSpawn {
  my $boatConfig = shift;

  my $npc = plugin::val('$npc');
  my $zonetime = plugin::val('$zonetime');

  $boatConfig->lastZonetime($zonetime);
  $boatConfig->spawned(0);
  $boatConfig->cooldown(0);

  quest::set_data($boatConfig->controllerId(), $npc->GetNPCTypeID());

  for my $config (@{$boatConfig->routeConfig}) {
    my @b = buildBoats(
      $config->npcId(),
      $config->zoneId(),
      $config->gridId(),
      $config->waitKey(),
      @{$config->runtimes}
    );
    push(@{$boatConfig->boats}, @b);
  }

  quest::debug("Current Zone Time: $zonetime");

  quest::settimer($boatConfig->timer(), 1);

  return $boatConfig;
}


sub boatsOnEventTimer {
  my $boatConfig = shift;
  my $timer = shift;

  my $zonetime = plugin::val('$zonetime');
  my $entity_list = plugin::val('$entity_list');

  if ($timer eq $boatConfig->timer()) {
    if(!$boatConfig->spawned() || $boatConfig->spawned() eq 0) {
      if(!$boatConfig->cooldown() || $boatConfig->cooldown() eq 0) {
        my $currentBoat = spawnBoatWithWait($zonetime, $boatConfig);

        if($currentBoat) {
          $boatConfig->currentBoat($currentBoat);
          $boatConfig->spawned(1);
          $boatConfig->cooldown(20);
          quest::settimer("delete_wait_key", 10);
        }
        elsif($boatConfig->currentBoat() && $boatConfig->currentBoat()->wanderType() != 0) {
          # Unable to spawn a boat, so there probably shouldn't be any here.
          # Make sure to remove it if there is.
          my $npc = $boatConfig->currentBoat()->npc();
          if($npc && $entity_list->IsMobSpawnedByNpcTypeID($npc->GetNPCTypeID())) {
            quest::debug("Boat found up when it should not be. Despawning");
            quest::depop($npc->GetNPCTypeID());
            $boatConfig = despawnBoats($boatConfig);
          }
        }
      }
      else {
        quest::debug("Boat cooling down [" . $boatConfig->cooldown() . "]");
        $boatConfig->cooldown($boatConfig->cooldown() - 1);
      }
    }
    elsif($boatConfig->currentBoat() && $boatConfig->currentBoat()->wanderType() != 0) {
      # Check to see if the time has changed by a conservative value and
      # despawn boats if it has and we are no longer in the boat window.
      my $zt_diff = abs(plugin::subtract_eq_times($zonetime, $boatConfig->lastZonetime()));
      $boatConfig->lastZonetime($zonetime);
      if($zt_diff > 2 && !plugin::boatShouldBeHere($boatConfig->currentBoat(), $zonetime)) {
        quest::debug("Zone time has changed too much. Despawning boat.");
        quest::depop($boatConfig->currentBoat()->npc()->GetNPCTypeID());
        $boatConfig = despawnBoats($boatConfig);
        $boatConfig->cooldown(5);
      }
      else {
        # This is a fallback incase we don't get the signal to despawn.
        my $diff = plugin::subtract_eq_times($zonetime, $boatConfig->currentBoat()->endTime());
        if($diff > 10) {
          quest::debug("Receive request to despawn boat due to overtime: $diff (ZT: $zonetime, ET: ". $boatConfig->currentBoat()->endTime() . ")");
          quest::depop($boatConfig->currentBoat()->npc()->GetNPCTypeID());
          $boatConfig = despawnBoats($boatConfig);
          $boatConfig->cooldown(20);
        }
      }
    }
  } elsif ($timer eq "delete_wait_key") {
    quest::stoptimer("delete_wait_key");
    my $currentBoat = $boatConfig->currentBoat();
    if($currentBoat) {
      my $waitKey = $currentBoat->waitKey();
      if($waitKey) {
        quest::debug("Delete wait key: $waitKey");
        quest::delete_data($waitKey);
      }
    }
  }

  return $boatConfig;
}


sub boatsOnEventSignal {
  my $boatConfig = shift;
  my $signal = shift;

  quest::debug("SIGNAL REQUEST: $signal");
  if($signal eq 1) {
    quest::debug("Received request to despawn boat.");
    $boatConfig = despawnBoats($boatConfig);
  }

  return $boatConfig;
}


sub onBoatsWaypointArrive {
  my $boatWaypoint = shift;
  my $wp = shift;

  my $npc = plugin::val('$npc');
  my $zonetime = plugin::val('$zonetime');

  if($boatWaypoint && $npc->GetGrid() eq $boatWaypoint->gridId()) {
    my $x = $npc->GetX();
    my $y = $npc->GetY();
    my $z = $npc->GetZ();
    $t = quest::GetTimeSeconds();
    quest::debug("ARRIVE: Actual Waypoint: $wp, RT: $t, TimeAtWaypoint: $zonetime, X: $x, Y: $y, Z: $z");

    if($wp eq $boatWaypoint->waypoint()) {
      quest::debug("Boat is leaving at $zonetime, RT: $t!");

      my $controller_name = $boatWaypoint->controllerName();
      quest::debug("Controller Name: $controller_name");
      my $controllerId = quest::get_data($boatWaypoint->controllerName());
      quest::debug("Controller ID: $controllerId");
      quest::signalwith($controllerId, 1, 10000);

      quest::set_data($boatWaypoint->waitKey(), $zonetime);

      @loc = plugin::getConnectingBoatStartLocation($boatWaypoint->connectingZoneId(),
                                                    $boatWaypoint->connectingGridId());

      @prev = plugin::getPreviousWaypointLocation($boatWaypoint->zoneId(),
                                                  $boatWaypoint->gridId(),
                                                  $wp);

      plugin::move_to_boat($boatWaypoint->connectingZoneId(),
                           $loc[0], $loc[1], $loc[2], $loc[3], $loc[4], $loc[5],
                           $prev[0], $prev[1]);
    }
  }
  return $boatWaypoint;
}


sub buildBoats() {
  my($npcId, $zoneId, $gridId, $waitKey, @boatZoneTimes) = @_;
  my @boats = ();
  my $index = 0;

  foreach(@boatZoneTimes) {
    my $boat = plugin::GetBoatInfo($npcId, $zoneId, $gridId, $_);
    $boat->waitKey($waitKey);
    push(@boats, $boat);
  }
  return @boats;
}


sub spawnBoatWithWait {
  my $zonetime = shift;
  my $boatConfig = shift;
  my $selectedBoat;

  foreach $boat (@{$boatConfig->boats}) {
    # Set the boat spawn time to what the previous zones boat
    # said it was when it zoned players over
    if($boat->waitKey()) {
      my $wait = quest::get_data($boat->waitKey());
      if($wait) {
        $boat = plugin::applyWait($boat, $wait, $zonetime);
      }
    }

    # Set the boat to spawn before its actual time to catch people incase they zone really fast.
    if($boat && $boat->wanderType() eq 6) {
      my $wait = plugin::subtract_seconds_to_eq_times($boat->startTime(), 5);
      $boat = plugin::applyWait($boat, $wait, $boat->startTime());
    }

    if($boat && $boat->spawned() eq 0 && plugin::boatShouldBeHere($boat, $zonetime)) {
      $t = quest::GetTimeSeconds();
      quest::debug("Spawning boat $boat");
      quest::debug("Boat is here at $zonetime, RT: $t!");
      boatDebug($boat);
      calculateBoatLocation($boat, $zonetime);
      my $boat = spawnBoat($boat);

      $selectedBoat = $boat;
      last;
    }
  }

  return $selectedBoat;
}

sub despawnBoats {
  my $boatConfig = shift;

  if($boatConfig) {
    foreach $boat (@{$boatConfig->boats}) {
      $boat->spawned(0);
      $boat->wait(0);
      $boat->npc(0);
      $boat->waitStartTime($boat->startTime());
      $boat->remainingPause(0);
      my $waitKey = $boat->waitKey();
      quest::debug("Deleting wait key: $waitKey");
      quest::delete_data($waitKey);
    }
    $boatConfig->spawned(0);
    $boatConfig->currentBoat(0);
  }

  return $boatConfig;
}


sub getAngleBetweenPoints {
  my ($x1, $y1, $x2, $y2) = @_;

  my $y_diff = abs($y1 - $y2);
  my $x_diff = abs($x1 - $x2);

  if ($y_diff < 0.0000009999999974752427) {
    $y_diff = 0.0000009999999974752427;
  }

  my $angle = atan2($x_diff, $y_diff) * 180.0 * 0.3183099014828645;

  if ($y1 >= $y2) {
    if ($x2 >= $x1) {
      return (90.0 - $angle + 90.0) * 511.5 * 0.0027777778;
    }
    if ($x2 <= $x1) {
      return ($angle + 180.0) * 511.5 * 0.0027777778;
    }
  }
  if ($y1 > $y2 || $x2 > $x1) {
    return $angle * 511.5 * 0.0027777778;
  }
  else {
    return (90.0 - $angle + 270.0) * 511.5 * 0.0027777778;
  }
}


sub GetBoatInfo {
  my $npcId = shift;
  my $zoneId = shift;
  my $gridId = shift;
  my $estimated_zonetime = shift;

  my $tmpBoat = Boat->new();
  my @waypoints = ();
  my $last_waypoint;

  my $zone_hour = int($estimated_zonetime / 100);
  my $zone_minute = $estimated_zonetime - ($zone_hour * 100);

  ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
  my $running_time = timelocal(0, $zone_minute, $zone_hour, $mday, $mon, $year);
  my $distance = 0;
  my $index = 0;

  my $connect = plugin::LoadMysql();
  my $query = "SELECT id, runspeed FROM npc_types WHERE id = $npcId LIMIT 1;";
	my $query_handle = $connect->prepare($query);
	$query_handle->execute();
  @row = $query_handle->fetchrow_array();
  $tmpBoat->startTime($estimated_zonetime);
  $tmpBoat->waitStartTime($estimated_zonetime);
  $tmpBoat->npcId($npcId);
  $tmpBoat->zoneId($zoneId);
  $tmpBoat->gridId($gridId);
  $tmpBoat->spawned(0);
  $tmpBoat->remainingPause(0);

  my $speed = $row[1] * 15;
  $tmpBoat->speed($speed);

  $query = "SELECT type FROM grid WHERE id = $gridId and zoneid = $zoneId LIMIT 1;";
  $query_handle = $connect->prepare($query);
	$query_handle->execute();
  @row = $query_handle->fetchrow_array();
  $tmpBoat->wanderType($row[0]);

  $query = "SELECT x, y, z, heading, pause, number FROM grid_entries WHERE gridid = $gridId and zoneid = $zoneId ORDER BY number;";
	$query_handle = $connect->prepare($query);
	$query_handle->execute();

	while(@row = $query_handle->fetchrow_array()) {
    my $waypoint = Waypoint->new();
    $waypoint->location([$row[0], $row[1], $row[2]]);

    $waypoint->pause($row[4]);
    $waypoint->number($index + 1);

    if($index > 0) {
      my $last_waypoint = $waypoints[$index - 1];

      $distance = sqrt( (($row[0] - $last_waypoint->location(0)) * ($row[0] - $last_waypoint->location(0))) +
                        (($row[1] - $last_waypoint->location(1)) * ($row[1] - $last_waypoint->location(1))) +
                        (($row[2] - $last_waypoint->location(2)) * ($row[2] - $last_waypoint->location(2))));

      $waypoint->previousWaypoint($last_waypoint);
      $waypoint->previousWaypointLocation([$last_waypoint->location(0), $last_waypoint->location(1), $last_waypoint->location(2)]);
      $waypoint->totalDistanceToHere($last_waypoint->totalDistanceToHere() + $distance);

      $last_waypoint->nextWaypoint($waypoint);
      $last_waypoint->nextWaypointLocation([$waypoint->location(0), $waypoint->location(1), $waypoint->location(2)]);
      $last_waypoint->distanceToNextWaypoint($distance);

      $this_running_time = ($distance / ($tmpBoat->speed() / 15) / $eq_constant) + ($last_waypoint->pause() / 3);
      $this_running_time *= 60;
      $running_time = $last_waypoint->runningTime() + $this_running_time;
      $estimated_zonetime = time2eq($running_time);
    }

    $waypoint->distanceFromLastWaypoint($distance);
    $waypoint->estimatedZonetime($estimated_zonetime);
    $waypoint->runningTime($running_time);

    if($index eq 0) {
      $tmpBoat->heading($waypoint->heading());
      $tmpBoat->location([$row[0], $row[1], $row[2]]);
      $tmpBoat->currentWaypoint($waypoint);
      $waypoint->totalDistanceToHere(0);
    }

    push(@waypoints, $waypoint);

    $index += 1;
  }

  $tmpBoat->totalRouteDistance($waypoints[-1]->totalDistanceToHere());
  $tmpBoat->endTime($estimated_zonetime);
  @{$tmpBoat->waypoints} = @waypoints;

  return $tmpBoat;
}


sub applyWait {
  my $tmpBoat = shift;
  my $wait = shift;
  my $zonetime = shift;

  if($tmpBoat) {
    my $start = $tmpBoat->startTime();
    if($wait && $wait > 0) {
      my $diff = plugin::subtract_eq_times($tmpBoat->startTime(), $wait);
      if($diff > 0) {
        $tmpBoat->wait($diff * 3);
        $tmpBoat->waitStartTime($wait);
      }
    }
  }

  return $tmpBoat;
}


sub boatShouldBeHere {
  my $tmpBoat = shift;
  my $time_of_interest = shift;
  my $real_start_time = $tmpBoat->startTime();
  my $start_time = $tmpBoat->waitStartTime();
  my $end_time = $tmpBoat->endTime();
  my $start_mod = 0;
  my $end_mod = 0;
  my $diff = plugin::subtract_eq_times($real_start_time, $start_time);

  if($diff < 20) {
    if($start_time > $end_time && $time_of_interest < $end_time) {
      $start_mod = -2400;
    }

    if($start_time > $end_time && $time_of_interest > $end_time) {
      $end_mod = 2400;
    }

    if($start_time + $start_mod < $end_time + $end_mod &&
       $time_of_interest >= $start_time + $start_mod &&
       $time_of_interest < $end_time + $end_mod) {
      return 1;
    }
    else {
      return 0;
    }
  }
  else {
    return 0;
  }
}


sub calculateBoatLocation {
  my $tmpBoat = shift;
  my $zonetime = shift;
  my $remainingPause = 0;
  # TODO: Make sure this really correct. I feel like it should be times 3 and not 1.75
  # but then speed will probably have to be a different value as well.
  my $elapsed = plugin::subtract_eq_times($zonetime, $tmpBoat->startTime()) * $eq_to_real;
  my $distance_should_have_traveled = $elapsed * $tmpBoat->speed();

  my $index = 0;
  my $activeWaypoint = $tmpBoat->waypoints(0);

  foreach $waypoint (@{$tmpBoat->waypoints}) {
    my $nextWaypoint = $waypoint->nextWaypoint();

    if($nextWaypoint) {
      my $diff = plugin::subtract_eq_times($nextWaypoint->estimatedZonetime(), $zonetime);
      if ($diff >= 0) {
        $activeWaypoint = $waypoint;
        $number = $activeWaypoint->number();
        quest::debug("Setting to waypoint $number.");
        last;
      }
    }
  }

  $x = $activeWaypoint->location(0);
  $y = $activeWaypoint->location(1);
  $z = $activeWaypoint->location(2);

  my $angleStartWaypoint = $activeWaypoint;
  my $angleEndWaypoint = $activeWaypoint->nextWaypoint();
  my $number = $activeWaypoint->number();

  if($activeWaypoint->pause() > 0) {
    quest::debug("Waypoint has pause of " . $activeWaypoint->pause() . ", EZ: " . $activeWaypoint->estimatedZonetime() . ", ZT: " . $zonetime);
    my $diff = plugin::subtract_eq_times($zonetime, $activeWaypoint->estimatedZonetime());
    $remainingPause = $activeWaypoint->pause() - ($diff * 3);
    quest::debug("Diff: $diff, Remaining pause calculated: $remainingPause");
    if($remainingPause > 0) {
      quest::debug("Remaining Pause: $remainingPause");
      $activeWaypoint = $activeWaypoint->nextWaypoint();
    }
    else {
      $remainingPause = 0;
    }
  }
  else {
    my $travelDiff = $angleEndWaypoint->totalDistanceToHere() - $distance_should_have_traveled;
    my $percent = 1 - $travelDiff / $activeWaypoint->distanceToNextWaypoint();
    $x = $x + (($activeWaypoint->location(0) - $x) * $percent);
    $y = $y + (($activeWaypoint->location(1) - $y) * $percent);
    $z = $z + (($activeWaypoint->location(2) - $z) * $percent);
    $remainingPause = 0;
  }

  my $x1 = $angleStartWaypoint->location(0);
  my $y1 = $angleStartWaypoint->location(1);
  my $x2 = $angleEndWaypoint->location(0);
  my $y2 = $angleEndWaypoint->location(1);
  my $angle = plugin::getAngleBetweenPoints($x1, $y1, $x2, $y2);

  $tmpBoat->heading($angle);
  $tmpBoat->remainingPause($remainingPause);
  $tmpBoat->location([$x, $y, $z]);
  $tmpBoat->currentWaypoint($activeWaypoint);

  return $tmpBoat;
}


sub spawnBoat {
  my $tmpBoat = shift;
  $tmpBoat->spawned(1);

  my $boatID = quest::spawn2(
    $tmpBoat->npcId(),
    $tmpBoat->gridId(),
    0,
    $tmpBoat->location(0),
    $tmpBoat->location(1),
    $tmpBoat->location(2),
    $tmpBoat->heading()
  );

  return plugin::updateNpc($tmpBoat, $boatID);
};

sub updateNpc {
  my $tmpBoat = shift;
  my $boatID = shift;

  my $entity_list = plugin::val('$entity_list');
  my $npc = $entity_list->GetNPCByID($boatID);

  my $currentWaypoint = $tmpBoat->currentWaypoint()->number();

  if($currentWaypoint > 1) {
    quest::debug("Setting waypoints to $currentWaypoint.");
    $npc->SetCurrentWP($currentWaypoint - 1);
    $npc->UpdateWaypoint($currentWaypoint - 1);
  }

  if($tmpBoat->remainingPause() > 0 && $tmpBoat->remainingPause() != $tmpBoat->currentWaypoint()->pause()) {
    quest::debug("Remaining pause is greater than 0 and not equal to the waypoint pause, so overriding.");
    my $pause = $tmpBoat->remainingPause();
    $npc->PauseWandering($pause);
  }
  else {
    $npc->ResumeWandering();
  }

  $tmpBoat->npc($npc);

  return $tmpBoat;
};


sub boatDebug {
  my $tmpboat = shift;

  my $start_time = $tmpboat->startTime();
  my $end_time = $tmpboat->endTime();
  my $distance = $tmpboat->totalRouteDistance();
  my $wander_type = $tmpboat->wanderType();
  my $spawned = $tmpboat->spawned();
  my $wait = $tmpboat->wait();
  quest::debug("Boat enters at $start_time and leaves at $end_time");
  quest::debug("Total Travel Distance: $distance");
  quest::debug("Wander Type: $wander_type");
  quest::debug("Spawned: $spawned");
  if($wait) {
    quest::debug("Boat Wait: $wait");
  }


  foreach $waypoint (@{$tmpboat->waypoints})
  {
    my $number = $waypoint->number();
    my $estimated_zonetime = $waypoint->estimatedZonetime();
    my $estimated_runtime = $waypoint->runningTime();
    my $distance = $waypoint->distanceFromLastWaypoint();
    quest::debug("Waypoint: $number, Estimated zonetime: $estimated_zonetime, Distance: $distance");
  }
}

sub move_to_boat
{
  local($zid, $boatX, $boatY, $boatZ, $boatH, $boatEndX, $boatEndY, $oldBoatStartX, $oldBoatStartY);

  ($zid, $boatX, $boatY, $boatZ, $boatH, $boatEndX, $boatEndY, $oldBoatStartX, $oldBoatStartY) = ($_[0], $_[1], $_[2], $_[3], $_[4], $_[5], $_[6], $_[7], $_[8]);

  my $npc = plugin::val('$npc');

  my $npcX = $npc->GetX();
  my $npcY = $npc->GetY();
  my $npcZ = $npc->GetZ();
  my $npcH = $npc->GetHeading();

  my $entity_list = plugin::val('$entity_list');
  my @riders = $entity_list->GetClientList();
  foreach $rider (@riders)
  {
    my $mobX = $rider->GetX();
    my $mobY = $rider->GetY();
    my $mobZ = $rider->GetZ();
    my $mobH = $rider->GetHeading();

    my $cdist = $npc->CalculateDistance($mobX, $mobY, $mobZ);

    if ($cdist <= 300)
    {
      # Waypoint right before the current location of the boat
      my $oldBoatEndX = $npcX;
      my $oldBoatEndY = $npcY;
      my $oldBoatDiffX = $oldBoatEndX - $oldBoatStartX;
      my $oldBoatDiffY = $oldBoatEndY - $oldBoatStartY;
      my $oldBoatDistance = sqrt( ($oldBoatDiffX * $oldBoatDiffX) + ($oldBoatDiffY * $oldBoatDiffY) );
      # This will be facing in the direction of the boat
      my $oldBoatUnitX = $oldBoatDiffX / $oldBoatDistance;
      my $oldBoatUnitY = $oldBoatDiffY / $oldBoatDistance;

      my $xdiff = $mobX - $npcX;
      my $ydiff = $mobY - $npcY;
      my $zdiff = $mobZ - $npcZ;
      my $hdiff = $mobH - $npcH;

      my $distance = sqrt( ($xdiff * $xdiff) + ($ydiff * $ydiff) );

      # This should be in the direction of the player
      my $unitX = 0;
      my $unitY = 0;

      if($distance > 0) {
        my $unitX = $xdiff / $distance;
        my $unitY = $ydiff / $distance;
      }

      # Current angle that player is from the boat.
      my $angle = atan2(-$unitY, -$unitX) - atan2($oldBoatUnitY, $oldBoatUnitX);

      # Get unit vector for new boat.
      my $newBoatStartX = $boatX;
      my $newBoatStartY = $boatY;
      my $newBoatEndX = $boatEndX;
      my $newBoatEndY = $boatEndY;
      my $newBoatDiffX = $newBoatStartX - $newBoatEndX;
      my $newBoatDiffY = $newBoatStartY - $newBoatEndY;
      my $newBoatDistance = sqrt( ($newBoatDiffX * $newBoatDiffX) + ($newBoatDiffY * $newBoatDiffY) );
      # This will be facing in the direction of the boat
      my $newBoatUnitX = $newBoatDiffX / $newBoatDistance;
      my $newBoatUnitY = $newBoatDiffY / $newBoatDistance;

      # Project the unit vector by the distance the player was from the boat
      my $projectedBoatX = $newBoatUnitX * $distance;
      my $projectedBoatY = $newBoatUnitY * $distance;

      # Rotate the new line by the # of degrees it was rotated on old boat.
      my $destx = $boatX + $projectedBoatX * cos($angle) - $projectedBoatY * sin($angle);
      my $desty = $boatY + $projectedBoatX * sin($angle) + $projectedBoatY * cos($angle);
      my $destz = $boatZ + $zdiff;
      my $desth = $boatH + $hdiff;

      $rider->MovePC($zid, $destx, $desty, $destz + 1, $desth);
    }
  }
}

sub getPreviousWaypointLocation {
  my $zoneid = shift;
  my $gridid = shift;
  my $number = shift;

  my $connect = plugin::LoadMysql();
  my $query = "SELECT x, y, z FROM grid_entries WHERE zoneid = $zoneid AND gridid = $gridid AND number < $number ORDER BY number DESC LIMIT 1;";
	my $query_handle = $connect->prepare($query);
	$query_handle->execute();
  @start = $query_handle->fetchrow_array();

  my $x = $start[0];
  my $y = $start[1];
  my $z = $start[2];

  return ($x, $y, $z);
}

sub getConnectingBoatStartLocation {
  my $zoneid = shift;
  my $gridid = shift;

  my $connect = plugin::LoadMysql();
  my $query = "SELECT x, y, z FROM grid_entries WHERE zoneid = $zoneid AND gridid = $gridid ORDER BY number LIMIT 2;";
	my $query_handle = $connect->prepare($query);
	$query_handle->execute();
  @start = $query_handle->fetchrow_array();
  @end = $query_handle->fetchrow_array();

  my $x = $start[0];
  my $y = $start[1];
  my $z = $start[2];

  my $heading = plugin::getAngleBetweenPoints($x, $y, $end[0], $end[1]);

  return ($x, $y, $z, $heading, $end[0], $end[1]);
}


return 1;
