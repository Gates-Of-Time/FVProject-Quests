sub EVENT_SPAWN {
  #:: Pause for 2 ms (0.002 sec)
  quest::pause(2);
  $priest = 0;
}

sub EVENT_WAYPOINT_DEPART {
  if ($priest < 8) {
    #:: Pause for 273 ms (0.273 sec)
    quest::pause(273);
    $priest = $priest + 1;
  }
  elsif ($priest == 8) {
    $priest = $priest + 1;
  }
  elsif ($priest > 8 && $priest < 16) {
    $priest = $priest + 1;
  }
  elsif ($priest == 16) {
    $priest = $priest + 1;
    #:: Pause for 155 ms (0.155 sec)
    quest::pause(155);
    #:: Set runspeed
    quest::modifynpcstat("runspeed", 2.5);
  }
  elsif ($priest > 16 && $priest < 24) {
    $priest = $priest + 1;
    #:: Pause for 155 ms (0.155 sec)
    quest::pause(155);
    #:: Set runspeed
    quest::modifynpcstat("runspeed", 2.5);
    #:: Create a timer '8' that triggers every 755 seconds (12 min 35 sec).
    quest::settimer(8, 755);
  }
}

sub EVENT_TIMER {
  if ($timer == 8) {
    #:: Stop the timer '8'.
    quest::stoptimer(8);
    #:: Depop all Eastern Wastes >> Priest_of_Brell (116541)
    quest::depopall(116541);
  }
}