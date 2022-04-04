sub EVENT_SPAWN {
  quest::settimer("ZoneTime",30);
}

sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::emote("looks over at you and gives you an awkward smile, then quickly looks away. You notice he isn't like most of the elves you've seen. You can't quite put your finger on it, but for one thing he smells like he hasn't bathed in weeks.");
  }
}

sub EVENT_TIMER {
  if (($timer eq "ZoneTime") && ($zonehour == 21)) {
    quest::spawn2(84028, 0, 0, $x, $y, $z, $h);
    quest::stoptimer("ZoneTime");
    quest::depop_withtimer();
  }
}
