sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("It is assumed that the froglok stronghold is well defended. None of the troopers sent from this garrison to find it have ever returned.  At least. not in one piece.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
