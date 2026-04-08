sub EVENT_SPAWN {
  #:: Create a timer '1' that triggers every 320 seconds (5 min 20 sec)
  quest::settimer(1,320);
}

sub EVENT_TIMER {
  if ($timer == 1) {
    quest::say("Sir, you said Royt face. Guard Royt is just on the other side of this wall!");
  }
}