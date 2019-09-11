sub EVENT_SIGNAL {
	#:: Match signal "1" from qeynos/Trumpy_Irontoe.pl
	if ($signal == 1) {
		quest::say("Trumpy, you are one sick little man!");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
