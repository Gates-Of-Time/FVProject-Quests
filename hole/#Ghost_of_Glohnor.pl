sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 14377 - Dark Shroud
		if (plugin::takeItems(14377 => 1)) {
			#:: Set factions
			quest::faction(404, 7);		#:: + Truespirit	
			#:: Spawn a The Hole >> Mummy_of_Glohnor (39154) at the given location
			quest::spawn2(39165, 0, 0, 464.4, 819, -678, 250);
		#:: Depop with spawn timer active
			quest::depop_withtimer();
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

