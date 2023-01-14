sub EVENT_SPAWN {
	quest::say("Wizzzz... Click. Tick...");
	#:: Create a timer 'depop' that triggers every 70 seconds
	quest::settimer("depop", 70);
}

sub EVENT_TIMER {
	#:: Match combat state 0 - out of combat
	if ($combat_state == 0) {
		#:: Depop without spawn timer
		quest::depop();
	}
}

sub EVENT_DEATH_COMPLETE {
	quest::say("Wizzzz... Click. Tick...");
}
