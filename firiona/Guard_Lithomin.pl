sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Halt!! This is General Veredeth's keep. It is currently under construction and is off limits to adventurers. Only those with important business may enter.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
