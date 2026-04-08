sub EVENT_SPAWN {
  #:: Create a timer '2' that triggers every random 10 to 40 seconds (10 sec to 40 sec)
  quest::settimer(2,(rand(30)+10));
}

sub EVENT_TIMER {
  if ($timer == 2) {
    #:: Animation 2 - Primary Jab
    quest::doanim(2);
    #:: Create a timer '2' that triggers every random 10 to 40 seconds (10 sec to 40 sec)
    quest::settimer(2,(rand(30)+10));
  }
}