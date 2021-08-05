sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Hrm?  Yes. yes?  Buy something, or leave me alone!");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
