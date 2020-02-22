sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("I'm afraid I can't speak right now, Stroh. I'm waiting for for someone very important to arrive.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
