sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Can't you see I'm on duty?!!  If you wish to converse. might I suggest the Tink N' Babble tavern near the Temple of Terror?");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
