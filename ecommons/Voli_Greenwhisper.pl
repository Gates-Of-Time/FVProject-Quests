sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("There must be hundreds of interlopers in this place of nature, and this one has just crossed paths with terrible fate!");
	}
}

sub EVENT_DEATH_COMPLETE {
	quest::say("Aaaaagh, not like this!");
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
