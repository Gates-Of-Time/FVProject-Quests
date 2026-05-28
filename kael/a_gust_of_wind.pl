sub EVENT_SPAWN {
  #:: Create a timer 'pass' that triggers every 30 seconds (30 sec)
  quest::settimer("pass", 30);
}

sub EVENT_TIMER {
  if ($timer eq "pass") {
    quest::emote("blows through the cavern.");
  }
}