sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("If you are searching for rare items. I would suggest the merchants of the Brood of Kotiz.  They often carry rare trinkets from beyond the walls of Cabilis.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
