sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("The waters of Cabilis are teeming with life.  A good fisherman could make heavy coin catching fish.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
