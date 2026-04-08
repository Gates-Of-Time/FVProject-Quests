sub EVENT_SAY {
	if ($text =~ /Hail/i) {
		quest::say("The giants aren't our only problem ya know? Them Rygorr Orcs in the wastes are up ta no good as well. But I wouldn't worry too much about them if'n I were you. Me own son Garadain is out there takin care of them. I almost feel sorry for those orcs hehe.");
	}
}

sub EVENT_SIGNAL {
	#:: Match if signal from thurgadinb/129097.pl is "1"
	if ($signal == 1) {
		quest::moveto(67,654,39,255,1);
	}

	#:: Match if signal from thurgadinb/129098.pl is "2"
	elsif ($signal == 2) {
		quest::moveto(5,545,66,0,1);
	}
}

