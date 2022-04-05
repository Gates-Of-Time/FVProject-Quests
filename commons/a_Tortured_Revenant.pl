sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
	quest::say("At last I can rest..");
	#:: Send a signal '1' to West Commonlands >> Simon_Aldicott (21011) with no delay
	quest::signalwith(21011, 1, 0);
}
