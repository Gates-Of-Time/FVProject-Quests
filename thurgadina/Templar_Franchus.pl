sub EVENT_SPAWN {
  #:: Start timer 1 with a 480 second (8 minute) duration
  quest::settimer(1,480);
}

sub EVENT_TIMER {
  #:: Match timer 1
  if ($timer == 1) {
    quest::say("Ok lads, remember what I taught you now. Thrust, block, slash...");
  }
}