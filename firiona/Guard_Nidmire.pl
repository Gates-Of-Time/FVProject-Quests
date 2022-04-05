sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Kunark is a dangerous place. We have our reasons for being here, but you... you are obviously in search of riches as are most these days.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
