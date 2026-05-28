sub EVENT_AGGRO {
  quest::say("You have stuck yer nose where it don't belong fool, I'll show ya the error of yer ways!");
}

sub EVENT_DEATH {
  #:: Spawn a Kael Drakkel >> #Vinric_Thunderclap (113556), without grid or guild war, at the given location
  quest::spawn2(113556, 28, 0, 1130.3, -933.2, -125.6, 126.8);
}
