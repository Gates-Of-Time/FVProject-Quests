sub EVENT_DEATH_COMPLETE {
	my $random = int(rand(100));
	if ($random <= 15) {
		#:: Spawn a City of Mist >> #Neh`Ashiir (90184), without grid or guild war, at the current location
   	quest::spawn2(90184, 0, 0, $x, $y, $z, $h);
	}
	else {
		#:: Spawn a City of Mist >> a_black_reaver  (90192), without grid or guild war, at the current location
   	quest::spawn2(90192, 0, 0, $x, $y, $z, $h);
	}
}