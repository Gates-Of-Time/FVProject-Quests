sub EVENT_SPAWN {
  #:: Create a timer '1' that triggers every 1 seconds (1 sec)
  quest::settimer(1, 1);
}

sub EVENT_WAYPOINT_DEPART {
  if ($x == 1370 && $y == -710.2 && $z == -115.6) {
    #:: Stop the timer '1'
    quest::stoptimer(1);
    #:: Depop with spawn timer active
    quest::depop_withtimer();
  }
}

sub EVENT_TIMER {
  if ($timer == 1) {
    if ($x == 1370 && $y == -710.2 && $z == -115.6) {
      #:: Stop the timer '1'
      quest::stoptimer(1);
      #:: Depop with spawn timer active
      quest::depop_withtimer();
    }
  }
}
