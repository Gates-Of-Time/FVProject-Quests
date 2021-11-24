sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("Your actions and history are a personal affront to all I stand for!");
	}
}

sub EVENT_AGGRO {
	quest::say("Time to die, $name!");
}

sub EVENT_DEATH_COMPLETE {
	quest::say("My comrades will avenge my death.");
}
