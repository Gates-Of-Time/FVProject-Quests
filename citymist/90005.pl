sub EVENT_DEATH_COMPLETE {
	my $random = int(rand(100));
	if ($random <= 15) {
		#:: Spawn a City of Mist >> #Lord_Rak`Ashiir (90174), without grid or guild war, at the current location
   	quest::spawn2(90174, 0, 0, $x, $y, $z, $h);
	}
	else {
		#:: Spawn a City of Mist >> a_black_reaver  (90005), without grid or guild war, at the current location
   	quest::spawn2(90005, 0, 0, $x, $y, $z, $h);
	}
}