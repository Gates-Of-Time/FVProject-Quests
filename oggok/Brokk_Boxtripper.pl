sub EVENT_SAY {
	#:: No dialogue responses
}

sub EVENT_ITEM {
	#:: Match a 10629 - Scribbled Parchment
	if (plugin::takeItems(10629 => 1)) {
		quest::say("Brokk sorry, me no smush Bozlum's perty garden on purpose. Me felt bad and me too shy to go tell Boz Brokk sorry. Umm...go give her these perty flowers. Dem smell good and maybe make Bozlum feel better.");
		#:: Give Item 10630 - Gift to Bozlum
		quest::summonitem(10630);
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}