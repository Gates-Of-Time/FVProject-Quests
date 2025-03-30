sub EVENT_ITEM {
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		#:: Match a 28023 - Orb of the Triumvirate
		if (plugin::takeItems(28023 => 1)) {
			quest::emote("takes the orb from you. The avatar has determined that you are worthy!");
			#:: Give a 5532 - Water Sprinkler of Nem Ankh
			quest::summonitem(5532);
			#:: Ding!
			quest::ding();
			#:: Grant a massive amount of experience
			quest::exp(200000);
			#:: Depop without spawn timer
			quest::depop();
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
