sub EVENT_SAY {
	if ($text =~ /hail/i) {
		quest::say("This unit is not designed for casual conversation. Please move along. Click...");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
