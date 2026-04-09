sub EVENT_SPAWN {
	#:: Create a timer '1' that triggers every 120 seconds (2 min 0 sec)
	quest::settimer(1, 120);
}

sub EVENT_TIMER {
	if ($timer == 1) {
		#:: Stop the timer '1'
		quest::stoptimer(1);
		#:: Depop without spawn timer
		quest::depop();
	}
}
