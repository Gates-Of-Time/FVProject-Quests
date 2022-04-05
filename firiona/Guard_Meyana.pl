sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Halt!! Enter only if you have business with the General or his aides.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
