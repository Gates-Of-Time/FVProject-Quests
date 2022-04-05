sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail!! This is the tunnel to borderland.  We prefer that only the soldiers use it, but if you must, do so at your own risk.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
