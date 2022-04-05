sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings. Are you a mercenary? If so, I urge you to go and speak with one of the officers of this outpost. We can always use help in suppressing the goblins and clearing out a killing zone.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
