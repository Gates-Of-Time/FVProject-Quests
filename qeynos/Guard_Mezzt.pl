sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Haawwwl. Whasnsuud grurffnunnnsuuuss.");
		#:: Send a signal '2' to South Qeynos >> Guard_Cyrillian (1006) with no delay
		quest::signalwith(1006, 2, 0);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
