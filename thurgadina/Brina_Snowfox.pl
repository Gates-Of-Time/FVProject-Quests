sub EVENT_SAY {
	if ($text =~ /hail/i) {
		quest::say("There doesn't seem to be much call for a sketch artist in Thurgadin these days. what with all the sculptures and such. but I get by. Care to purchase one of my sketches. $race?");
	}
}

