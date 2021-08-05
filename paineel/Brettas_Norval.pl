sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Hail, $name!  I thought I heard the clink of coins and now here you stand!  Please feel free to browse through my stock.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
