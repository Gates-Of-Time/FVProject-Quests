sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, $name.  Thank you for coming in and looking at our wares.  We should have just about everything you need if you wish to take a trip.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
