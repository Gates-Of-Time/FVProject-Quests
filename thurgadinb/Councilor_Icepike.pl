sub EVENT_SAY {
	if ($text =~ /Hail/i) {
		quest::say("King Tormax must be stopped, no matter what the cost.");
	}
}

sub EVENT_SIGNAL {
	#:: Match if signal from thurgadinb/129097.pl is "1"
	if ($signal == 1) {
		quest::moveto(117,701,39,128,1);
	}

	#:: Match if signal from thurgadinb/129098.pl is "2"
	elsif ($signal == 2) {
		quest::moveto(30,533,68,0,1);
	}
}

