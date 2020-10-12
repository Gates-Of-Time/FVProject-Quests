sub EVENT_SPAWN {
	#:: Create a timer 'depop' that triggers every 3600 seconds (1 hour)
	quest::settimer("depop", 3600);
}

sub EVENT_TIMER {
	#:: Match the timer 'depop'
	if ($timer eq "depop") {
		#:: Stop the timer 'depop' from triggering
		quest::stoptimer("depop");
		#:: Depop
		quest::depop();
	}
}

sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("I have been discovered!!! You will never stop us from reclaiming the Nektulos for Karana, $name!!");
	}
}
