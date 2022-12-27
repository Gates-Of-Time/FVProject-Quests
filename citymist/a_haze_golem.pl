sub EVENT_DEATH_COMPLETE {
	my $random = int(rand(100));
	if ($random <= 10) {
			#:: Spawn a City of Mist >> #a_raging_golem  (90190), without grid or guild war, at the current location
   	quest::spawn2(90190, 0, 0, $x, $y, $z, $h);
	}
}