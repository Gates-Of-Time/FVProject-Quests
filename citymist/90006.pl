sub EVENT_DEATH_COMPLETE {
	my $random = int(rand(100));
	if ($random <= 15) {
		#:: Choose a random 90091 - an_apparition, 90153 - an_apparition, 90064 - a_wraith, 90073 - a_wraith, 90048 - a_phantom or 90057 - a_phantom
		my $which = quest::ChooseRandom(90091, 90153, 90064, 90073, 90048, 90057)
		#:: Spawn without grid or guild war, at the current location
		quest::spawn2($which, 0, 0, $x, $y, $z, $h)
	}
	else {
		#:: Spawn a City of Mist >> a_black_reaver  (90192), without grid or guild war, at the current location
   	quest::spawn2(90192, 0, 0, $x, $y, $z, $h);
	}
}