sub EVENT_DEATH {
	my $x = $npc->GetX();
	my $y = $npc->GetY();
	my $z = $npc->GetZ(); 
	my $h = $npc->GetHeading();
	#:: Spawn a Tower of Frozen Shadow >> an_enraged_vampire (111173), without grid or guild war, at the current location
	quest::spawn2(111173,0,0,$x,$y,$z,$h);
}