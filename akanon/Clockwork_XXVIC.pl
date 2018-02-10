sub EVENT_ITEM {
	#:: Turn in for 13844 -  Shiny Card for Series C Black Boxes Quest
	if (plugin::check_handin(\%itemcount, 18770 => 1)) {
		quest::say("Tick.. Pop.. Access granted.");
		#:: Give item 13212 - Blackbox XXVIC
		quest::summonitem(13211);
		#:: Give a small amount of XP
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(115,1); 		#:: + Gem Cutters
		quest::faction(91,1); 		#:: + Eldritch Collective
		quest::faction(176,1); 		#:: + King Ak'Anon
		quest::faction(71,-1); 		#:: - Dark Reflection
		quest::faction(209,-1); 	#:: - Clan Grikbar
	}
	plugin::return_items(\%itemcount);
}
