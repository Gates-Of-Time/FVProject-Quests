sub EVENT_SAY {   
	if ($text=~/hail/i) {
		quest::say("Hello, $name.  Feel free to peruse my wares but waste not my time with idle browsing if you do not intend to purchase something.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
