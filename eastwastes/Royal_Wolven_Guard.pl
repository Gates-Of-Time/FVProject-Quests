sub EVENT_SPAWN {
  #:: Pause for 2 ms (0.002 sec)
  quest::pause(2);
  $wolf = 0;
}

sub EVENT_WAYPOINT_DEPART {
  if ($wolf < 8) {
    #:: Pause for 273 ms (0.273 sec)
    quest::pause(273);
    $wolf = $wolf + 1;
  }
  elsif ($wolf == 8) {
    $wolf = $wolf + 1;
  }
  elsif ($wolf > 8 && $wolf < 16) {
    $wolf = $wolf + 1;
  }
  elsif ($wolf == 16) {
    $wolf = $wolf + 1;
    #:: Pause for 155 ms (0.155 sec)
    quest::pause(155);
    #:: Set runspeed
    quest::modifynpcstat("runspeed", 2.5);
  }
  elsif ($wolf > 16 && $wolf < 24) {
    $wolf = $wolf + 1;
    #:: Pause for 155 ms (0.155 sec)
    quest::pause(155);
    #:: Set runspeed
    quest::modifynpcstat("runspeed", 2.5);
    #:: Create a timer '10' that triggers every 755 seconds (12 min 35 sec).
    quest::settimer(10, 755);
  }
}

sub EVENT_TIMER {
  if ($timer == 10) {
    #:: Stop the timer '10'.
    quest::stoptimer(10);
    #:: Depop all Eastern Wastes >> Royal_Wolven_Guard (116563)
    quest::depopall(116563);
  }
}