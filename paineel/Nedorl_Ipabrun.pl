sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Buy, or leave.  Make up your mind.  I have no time for idle chitchat.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
