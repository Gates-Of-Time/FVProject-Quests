sub EVENT_DEATH_COMPLETE {
	#:: Create a scalar variable to store a random number 1 to 100
	my $random = int(rand(100)) + 1;
	if ($random < 80) {
		#:: Spawn a City of Mist >> a_black_reaver  (90005), without grid or guild war, at the current location
		quest::spawn2(90005, 0, 0, $x, $y, $z, $h);
	}
	elsif ($random < 85) {
		#:: Spawn a City of Mist >> Lord_Ghiosk (90180), without grid or guild war, at the current location
		quest::spawn2(90180, 0, 0, $x, $y, $z, $h);
	}
	elsif ($random < 90) {
		#:: Spawn a City of Mist >> #Lord_Rak`Ashiir (90174), without grid or guild war, at the current location
		quest::spawn2(90174, 0, 0, $x, $y, $z, $h);
	}
	elsif ($random < 95) {
		#:: Spawn a City of Mist >> #Neh`Ashiir (90184), without grid or guild war, at the current location
		quest::spawn2(90184, 0, 0, $x, $y, $z, $h);
	}
	else {
		#:: Choose a random 90091 - an_apparition, 90153 - an_apparition, 90064 - a_wraith, 90073 - a_wraith, 90048 - a_phantom or 90057 - a_phantom and spawn at the current location
		quest::spawn2(quest::ChooseRandom(90091, 90153, 90064, 90073, 90048, 90057), 0, 0, $x, $y, $z, $h)
	}
}
