sub EVENT_DEATH {
	my $h = $npc->GetHeading();
	#:: Spawn a Tower of Frozen Shadow >> lucid_spirit_of_Abrams (111174), without grid or guild war, at the current location
     quest::spawn2(111147,0,0,$x,$y,$z,$h);
}


