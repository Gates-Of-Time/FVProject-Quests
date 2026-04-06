sub EVENT_SPAWN {
  #:: Pause for 2 ms (0.002 sec)
  quest::pause(2);
  $archer = 0;
}

sub EVENT_WAYPOINT_DEPART {
  if ($archer < 8) {
    #:: Pause for 273 ms (0.273 sec)
    quest::pause(273);
    $archer = $archer + 1;
  }
  elsif ($archer == 8) {
    $archer = $archer + 1;
  }
  elsif ($archer > 8 && $archer < 16) {
    $archer = $archer + 1;
  }
  elsif ($archer == 16) {
    $archer = $archer + 1;
    #:: Pause for 155 ms (0.155 sec)
    quest::pause(155);
    #:: Set runspeed
    quest::modifynpcstat("runspeed", 2.5);
  }
  elsif ($archer > 16 && $archer < 24) {
    $archer = $archer + 1;
    #:: Pause for 155 ms (0.155 sec)
    quest::pause(155);
    #:: Set runspeed
    quest::modifynpcstat("runspeed", 2.5);
    #:: Create a timer '9' that triggers every 755 seconds (12 min 35 sec).
    quest::settimer(9, 755);
  }
}

sub EVENT_TIMER {
  if ($timer == 9) {
    #:: Stop the timer '9'.
    quest::stoptimer(9);
    #:: Depop all Eastern Wastes >> Royal_Archer (116555)
    quest::depopall(116555);
  }
}