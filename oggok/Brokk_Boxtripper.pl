sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		#:: Match a 10629 - Scribbled Parchment
		if (plugin::takeItems(10629 => 1)) {
			quest::say("Brokk sorry, me no smush Bozlum's perty garden on purpose. Me felt bad and me too shy to go tell Boz Brokk sorry. Umm....go give her these perty flowers. Dem smell good and maybe make Bozlum feel better.");
			#:: Give a 10630 - Gift to Bozlum
			quest::summonitem(10630);
			#:: Ding!
			quest::ding();
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
