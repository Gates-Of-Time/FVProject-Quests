sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Why hello there, what are you looking for in this dark place? All that's down here is us assassins.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
