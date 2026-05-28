sub EVENT_AGGRO {
  quest::say("Your bones will be crushed by the Kromrif of Kael Drakkel!");
}

sub EVENT_DEATH {
  #:: Spawn a Kael Drakkel >> Khalerogg_Dorfenbane (113534), without grid or guild war, at the given location
  quest::spawn2(113534, 29, 0, 1130.3, -749.6, -125.6, 126.6);
}