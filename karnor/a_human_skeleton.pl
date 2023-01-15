sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Save my.. Soul.. Find.. Wizard.. Desp..");
	}
}

sub EVENT_ITEM {
	#:: Match a 12964 - Ornate Bottle
	if (plugin::takeItems(12964 => 1)) {
		#:: Give a 12967 - Bottle of Swirling Smoke
		quest::summonitem(12967);
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
