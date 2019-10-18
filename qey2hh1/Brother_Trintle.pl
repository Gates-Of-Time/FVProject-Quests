sub EVENT_AGGRO {
	quest::say("For Bertoxxulous, I shall spill your guts upon the floor!");
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
