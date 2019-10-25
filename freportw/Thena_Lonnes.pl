sub EVENT_SPAWN {
	#:: Create a timer to trigger every 3 seconds
	quest::settimer("spar2",3);
}

sub EVENT_TIMER {
	#:: Match "Kungfu" every five seconds
	if ($timer eq "spar2") {
	quest::doanim(quest::ChooseRandom (1,5,6,7,11,30,45,46,47));
	}
}
