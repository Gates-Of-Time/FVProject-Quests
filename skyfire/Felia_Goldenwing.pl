sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#::Match 10632 - Dull Sapphire
		if (plugin::takeItems(10632 => 1)) {
			#:: Give item 10619 - Enchanted Sapphire
			quest::summonitem(10619);
		}
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}