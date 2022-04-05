sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Halt!! This tunnel is no longer operational. The walls have given way to the pressures of the sea.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
