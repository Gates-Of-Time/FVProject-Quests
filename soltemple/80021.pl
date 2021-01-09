sub EVENT_SAY {
	if ($text=~/solusek ro/i) {
		quest::say("Solusek Ro is the Master of Fire and the Keeper of Power.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
