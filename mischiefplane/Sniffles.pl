sub EVENT_DEATH {
  my $x = $npc->GetX();
  my $y = $npc->GetY();
  my $z = $npc->GetZ();
  my $h = $npc->GetHeading();

  #:: Spawn a The Plane of Mischief >> Life (126366), without grid or guild war, at the current location
  quest::spawn2(126366, 0, 0, $x, $y, $z, $h);
}
