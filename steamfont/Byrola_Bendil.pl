sub EVENT_AGGRO {
	quest::say("Ahhhh!  A madman!  Someone help me!");
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
