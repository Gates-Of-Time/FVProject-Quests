sub EVENT_SPAWN {
  #:: Set proximity to a 30-unit radius around the NPC's spawn location
  quest::set_proximity($x - 30, $x + 30, $y - 30, $y + 30);
}

sub EVENT_PROXIMITY_SAY {
  if ($text =~ /dain/i) {
    #:: Spawn a Kael Drakkel >> Doldigun_Steinwielder (113440), without grid or guild war, at the given location
    quest::spawn2(113440, 0, 0, 1126.4, -840.6, -118.3, 62.6);
  }
}

sub EVENT_SIGNAL {
  if ($dwarf == 1) {
    #:: Spawn a Kael Drakkel >> #Doldigun_Steinwielder (113508), without grid or guild war, at the given location
    quest::spawn2(113508, 29, 0, 1130.3, -933.2, -125.6, 63.4);
    $dwarf = 0;
  }
  else {
    $dwarf = 1;
  }
}