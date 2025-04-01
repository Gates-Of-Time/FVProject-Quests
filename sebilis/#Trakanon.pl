sub EVENT_SPAWN {
	#:: Create a timer 'depop' that triggers 20 minutes (1200s)
	quest::settimer("depop", 1200);
}

sub EVENT_TIMER {
	#:: Match the timer 'depop'
	if ($timer eq "depop") {
		#:: Stop the timer 'depop'
		quest::stoptimer("depop");
		#:: Depop without spawn timer
		quest::depop();
	}
}