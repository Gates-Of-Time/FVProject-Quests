my $boatWaypoint = BoatWaypoint->new(
  controllerName => "ErudnextBoatControllerId",
  zoneId => 24,
  gridId => 22,
  waitKey => "golden_maiden_erudnext_to_erudsxing_wait",
  connectingZoneId => 98,
  connectingGridId => 64,
  waypoint => 10
);

my $triggeredSabrina = 0;

sub EVENT_SPAWN {
  $triggeredSabrina = 0;
}

sub EVENT_WAYPOINT_ARRIVE {
  $boatWaypoint = plugin::onBoatsWaypointArrive($boatWaypoint, $wp);

  if($triggeredSabrina == 0 && $wp >= 3 && $wp < 7) {
    $triggeredSabrina = 1;
    quest::signalwith(24056, 1);
  }
  elsif($wp == 7) {
    $triggeredSabrina = 0;
    quest::signalwith(24056, 2);
  }
}
