sub EVENT_SPAWN {
  #:: Create a timer '2' that triggers every 30 seconds (30 sec)
  quest::settimer(2,30);
}

sub EVENT_TIMER {
  if ($timer == 2) {
    #:: Animation 2 - Primary Jab
    quest::doanim(2);
  }
}