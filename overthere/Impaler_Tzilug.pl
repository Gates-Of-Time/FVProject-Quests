sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match 10634 - Dull Emerald
		if (plugin::takeItems(10634 => 1)) {
			quest::say("Your bidding has been done, now leave this land and never return.");
			#:: Give 10,000 experience
			quest::exp(10000);
			#:: Give item 10621 - Enchanted Emerald
			quest::summonitem(10621);
		}
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}
