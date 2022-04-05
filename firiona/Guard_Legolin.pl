sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Beware of the sea wall at night. We are quite under manned and cannot patrol every place at once. Often times a few pirates or goblins manage to scale the wall and attempt to lessen our might.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
