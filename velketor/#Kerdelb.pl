sub EVENT_DEATH {
  #:: Spawn a Velketor's Labyrinth >> Kerd (112085), without grid or guild war, at the current location.
  quest::spawn2(112085, 0, 0, $x, $y, $z, $h);
}
