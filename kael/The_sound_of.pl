sub EVENT_SPAWN {
  #:: Create a timer 'pass' that triggers every 24 seconds (24 sec)
  quest::settimer("pass", 24);
}

sub EVENT_TIMER {
  if ($timer eq "pass") {
    quest::emote("chanting seems to be coming from all directions.");
  }
}