sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Have you spoken with Danus? If not I suggest you do so that I will not waste my breath further.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
