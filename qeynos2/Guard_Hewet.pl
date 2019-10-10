sub EVENT_AGGRO {
	quest::say("Time to die, $name!");
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
