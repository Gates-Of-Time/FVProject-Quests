sub EVENT_SPAWN {
	#:: Create a timer 'depop' that triggers every 1800 seconds (30 minutes)
	quest::settimer("depop", 1800);
}

sub EVENT_TIMER {
	#:: Match timer 'depop'
 	if ($timer eq "depop") {
  		#:: stop the timer 'depop' from looping
		quest::stoptimer("depop");
  		#:: Depop without spawn timer
		quest::depop();
	}
}
