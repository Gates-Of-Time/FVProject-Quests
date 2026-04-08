sub EVENT_SAY {
	if ($text =~ /Hail/i) {
		quest::say("It's that bastard Tormax whats the cause of all our trouble. What we need to do is send some specially trained assassins to take him out. Sure it's not the most honorable thing to do, but without him the giants wouldn't know what to do.");
	}
}

sub EVENT_SIGNAL {
	#:: Match if signal from thurgadinb/129097.pl is "1"
	if ($signal == 1) {
		quest::moveto(-4,887,-1,40.5,1);
	}

	#:: Match if signal from thurgadinb/129098.pl is "2"
	elsif ($signal == 2) {
		quest::moveto(-5,543,66,0,1);
	}
}

