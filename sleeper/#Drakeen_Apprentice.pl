sub EVENT_DEATH {
  #:: Spawn a Sleeper's Tomb >> #Drakeen_Protector (128071), without grid or guild war, at the current location
  quest::spawn2(128071, 0, 0, $x, $y, $z, $h);
}
