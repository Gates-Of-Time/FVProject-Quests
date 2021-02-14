sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Oh good. Another fine example of why I am growing to hate this city. If Commander Bayle were running things here, we would not have to put up with weaklings like you walking our streets.");
	}
}

sub EVENT_COMBAT {
	if ($combat_state == 1) {
		quest::say("Time to die $name!");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
