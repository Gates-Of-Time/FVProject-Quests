sub EVENT_SPAWN {
	#:: Create a timer that loops every 15 minutes
	quest::settimer("Lenny", 950);
}

sub EVENT_TIMER {
	#:: Match the 'Lenny' timer
	if ($timer eq "Lenny") {
		#:: Key up a data bucket
		$key = gaffin_timer_lenny;
		#:: Match if the key does not exist
		if (!quest::get_data($key)) {
			#:: Signal 19062 - Lendel Deeppockets in Rivervale
			quest::signalwith(19062, 1, 0);
		}
	}
}
