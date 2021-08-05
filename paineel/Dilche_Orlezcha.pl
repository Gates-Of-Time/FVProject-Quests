sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Ah, hello young adventurer!  A mind is a powerful tool indeed but it never hurts to have a strong weapon by your side to cleave through the skulls of your enemies.  Feel free to look at my selection of weapons.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
