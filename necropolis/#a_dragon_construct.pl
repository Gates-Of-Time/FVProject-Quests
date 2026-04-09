sub EVENT_SPAWN {
	#:: Create a timer 'rest' that triggers every 300 seconds (5 min 0 sec)
	quest::settimer("rest",300);
}

sub EVENT_TIMER {
	if ($timer eq "rest") {
		#:: Stop the timer 'rest'
		quest::stoptimer("rest");
		#:: Depop without spawn timer
		quest::depop();
	}
}

