sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("Die!");
	}
}

sub EVENT_SLAY {
	quest::say("Die!");
}
