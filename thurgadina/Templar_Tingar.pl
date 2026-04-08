sub EVENT_SPAWN {
  #:: Start timer 1 with a 480 second (8 minute) duration
  quest::settimer(1,480);
  #:: Start timer 2 with a 840 second (14 minute) duration
  quest::settimer(2,840);
}

sub EVENT_TIMER {
  #:: Match timer 1
  if ($timer == 1) {
    quest::say("Oh Brell, what ever did I do to inspire your wrath?");
  }
  #:: Match timer 2
  elsif ($timer == 2) {
    quest::say("Ok, let's try this again.");
    quest::say("ROYGHT FACE!");
  }
}