sub EVENT_DEATH_COMPLETE {
	quest::say("Start digging your grave. The Indigo Brotherhood shall find you.");
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
