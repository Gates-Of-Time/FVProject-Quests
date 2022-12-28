# Quest: Brain Bite (Concussion)

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Save my.. Soul.. Find.. Wizard.. Desp..");
	}
}

sub EVENT_ITEM {
	#:: Match a 12963 - Ornate Bottle (Mardon)
	if (plugin::takeItems(12963 => 1)) {
		#:: Give a 12966 - Bottle of Swirling Smoke (Mardon's soul)
		quest::summonitem(12966);
		#:: Ding!
		quest::ding();
		#:: Depop without spawn timer
		quest::depop();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
