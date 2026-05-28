sub EVENT_AGGRO {
  quest::say("Your bones will be crushed by the Kromrif of Kael Drakkel!");
}

sub EVENT_DEATH {
  #:: Spawn a Kael Drakkel >> Valorankt_Zekkin (113528), without grid or guild war, at the given location
  quest::spawn2(113528, 28, 0, 1130.3, -933.2, -125.6, 126.6);
}