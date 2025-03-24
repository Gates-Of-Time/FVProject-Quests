sub EVENT_ITEM {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		#:: Match a 10626 - Empty Ink Vial
		if (plugin::takeItems(10626 => 1)) {
			quest::say("Crroooaak! Crrroooooaaakk!");
			#:: Give a 10601 - Ink of the Dark
			quest::summonitem(10601);
			#:: Grant a medium amount of experience
			quest::exp(10000);
			#:: Ding!
			quest::ding();
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
