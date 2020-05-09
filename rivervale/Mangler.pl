sub EVENT_SPAWN {
	#:: Set a timer 'mangler' that loops every 720 seconds (12 min)
	quest::settimer("mangler", 720);
}

sub EVENT_TIMER {
	#:: Match the 'mangler'
	if ($timer eq "mangler") {
		#:: Key up a data bucket
		$key = mangler_timer_manger;
		#:: Match if the key does not exist
		if (!quest::get_data($key) {
			quest::say("<Bark, bark, bark! Hoooooowwwwwwl!>");
			#:: Send a signal "1" to Rivervale >> Kevlin_Diggs (19049) after 0 seconds
			quest::signalwith(19049,1,0);
		}
	}
}
