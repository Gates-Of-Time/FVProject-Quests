sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("If you find yourself deep in the swamp and starving. try foraging.  I am sure you'll find something to eat.  If not. there are always froglok tongues.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
