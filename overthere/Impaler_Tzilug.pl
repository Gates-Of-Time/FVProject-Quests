sub EVENT_ITEM {
	#:: Match a 10634 - Dull Emerald
	if (plugin::takeItems(10634 => 1)) {
		quest::say("Your bidding has been done, now leave this land and never return.");
		#:: Give item 10621 - Enchanted Emerald
		quest::summonitem(10621);
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
    	quest::exp(10000);
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}
