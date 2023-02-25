sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("Guards!! Guards!!");
	}
}

sub EVENT_DEATH_COMPLETE {
	quest::say("My comrades will avenge my death.");
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
