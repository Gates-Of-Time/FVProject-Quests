sub EVENT_SPAWN {
	#:: Set a timer for 12 minutes
	quest::settimer("mangler", 720);
}

sub EVENT_TIMER {
	#:: Match the "mangler" timer as it loops
	if ($timer eq "mangler") {
		quest::say("<Bark, bark, bark! Hoooooowwwwwwl!>");
		#:: Send a signal "1" to Rivervale >> Kevlin_Diggs (19049) after 0 seconds
		quest::signalwith(19049,1,0);
	}
}
