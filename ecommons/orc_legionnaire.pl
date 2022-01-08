sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("For the glory of the Deathfist Magistrate, your blood shall run!!");
	}
}

sub EVENT_DEATH_COMPLETE {
	quest::say("Aaarrghh!! The Deathfist shall hunt you down. My death will not go unnoticed.");
}
