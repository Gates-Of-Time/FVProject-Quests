sub EVENT_ITEM {
	#:: Match a 13844 - Shiny Card (for Series C Black Boxes Quest)
	if (plugin::takeItems(13844 => 1)) {
		quest::say("Tick.. Pop.. Access granted.");
		#:: Give item 13212 - Blackbox XXVIC
		quest::summonitem(13211);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(255, 1); 		#:: + Gem Cutters
		quest::faction(245, 1); 		#:: + Eldritch Collective
		quest::faction(333, 1); 		#:: + King Ak'Anon
		quest::faction(238, -1); 		#:: - Dark Reflection
		quest::faction(287, -1); 		#:: - Clan Grikbar
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
