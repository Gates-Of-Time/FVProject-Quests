sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 10633 - Dull Ruby
		if (plugin::takeItems(10633 => 1)) {
			#:: Give a 10620 - Enchanted Ruby
			quest::summonitem(10620);
		}
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}
