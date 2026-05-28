sub EVENT_DEATH {
  #:: Spawn a Sleeper's Tomb >> TODO (128096), without grid or guild war, at the current location
  quest::spawn2(128096, 0, 0, $x, $y, $z, $h);
}
