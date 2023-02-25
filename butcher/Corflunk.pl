sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("Let me release your soul.");
	}
}

sub EVENT_DEATH_COMPLETE {
	quest::say("Your destiny lies at the hands of the Greenbloods.");
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
