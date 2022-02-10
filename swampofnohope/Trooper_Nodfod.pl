sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Hail, adventurer!  Watch your step and don't get lost in the swamplands.  The frogloks will have you for stew.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
