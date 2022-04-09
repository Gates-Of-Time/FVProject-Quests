sub EVENT_SIGNAL {
	#:: Match a signal '1' from /overthere/Alchemist_Granika.pl
	if ($signal == 1) {
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
