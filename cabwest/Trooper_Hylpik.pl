sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("You look a bit encumbered.  You should visit The Block.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
