sub EVENT_DEATH_COMPLETE {
	#:: Create a scalar variable to store a random number 1 to 100
	my $random = int(rand(100)) + 1;
	if ($random < 15) {
		#:: Spawn a City of Mist >> #Neh`Ashiir (90184), without grid or guild war, at the current location
		quest::spawn2(90184, 0, 0, $x, $y, $z, $h);
	}
	else {
		#:: Spawn a City of Mist >> a_black_reaver (90006), without grid or guild war, at the current location
		quest::spawn2(90006, 0, 0, $x, $y, $z, $h);
	}
}
