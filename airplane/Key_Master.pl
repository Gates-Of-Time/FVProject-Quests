my $counter;

sub EVENT_SPAWN {
	#:: Reset the count
	$counter = 0;
}

sub EVENT_SIGNAL {
	#:: Match a signal '1' from airplane/an_azarack.pl
	if ($signal == 1) {
		#:: Add 1 to the current count
		$counter += 1;
		if ($counter == 9) {
			#:: Spawn a The Plane of Sky >> Protector_of_Sky (71059), without grid or guild war, at the specified location
			quest::spawn2(71059, 0, 0, -602.2, -254.4, -333.5, 201.5);
			#:: Reset the counter
			$counter = 0;
		}
	}
}

sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Hello there, brave traveller. I sell keys that take you to other islands in this here Plane of Sky. My prices are the best around. Heh, heh.");
	}
}
