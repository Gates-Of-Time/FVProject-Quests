sub EVENT_DEATH_COMPLETE {
	#:: Create a scalar variable to store a random number 1 to 100
	my $random = int(rand(100)) + 1;
	if ($random < 15) {
		#:: Spawn a City of Mist >> #Lord_Rak`Ashiir (90174), without grid or guild war, at the current location
		quest::spawn2(90174, 0, 0, $x, $y, $z, $h);
	}
	else {
		#:: Spawn a City of Mist >> a_black_reaver  (90004), without grid or guild war, at the current location
		quest::spawn2(90004, 0, 0, $x, $y, $z, $h);
	}
}
