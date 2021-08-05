sub EVENT_SAY { 
	if ($text=~/hail/i) {
        	quest::say("Oh, hello there, and welcome to my humble store.  We have everything you might need here, for just about anywhere you'd want to go.  Matter of fact, a party supplied themselves for a trip into Old Paineel just moments ago!");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
