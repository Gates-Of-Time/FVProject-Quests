sub EVENT_DEATH {
	my $x = $npc->GetX();
	my $y = $npc->GetY();
	my $z = $npc->GetZ(); 
	my $h = $npc->GetHeading();
	#:: Spawn a Tower of Frozen Shadow >> #an_enraged_vampire (111174), without grid or guild war, at the current location
	quest::spawn2(111174,0,0,$x,$y,$z,$h);

	my $random_result = int(rand(100));
	if($random_result<16){
		#:: Spawn a Tower of Frozen Shadow >> #Tserrina_Syl`Tor (111154), without grid or guild war, at the given location
		quest::unique_spawn(111154,0,0,21.1,260.7,355.0);
		quest::delglobal("Tserr");
		quest::setglobal("Tserr",3,3,"F");
	}
}