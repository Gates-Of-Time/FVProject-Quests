sub EVENT_DEATH {
  #:: Spawn a Velketor's Labyrinth >> Bled (112055), without grid or guild war, at the current location.
  quest::spawn2(112055, 0, 0, $x, $y, $z, $h);
}