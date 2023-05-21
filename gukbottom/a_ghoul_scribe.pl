sub EVENT_ITEM {
	
	if ( quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		# 10626 : Empty Ink Vial
		if (plugin::takeItems(10626 => 1)) {
			quest::say("Crroooaak! Crrroooooaaakk!");
			#:: Give Item ID: 10601 Ink of the Dark
			quest::summonitem(10601);
			#:: Ding!
			quest::ding();
			#:: Grant some experience
			quest::exp(10000);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
