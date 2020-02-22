sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Welcome to the Rathe Mountains hideaway!");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
