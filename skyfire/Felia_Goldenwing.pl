sub EVENT_ITEM {
	#:: Match a 10632 - Dull Sapphire
	if (plugin::takeItems(10632 => 1)) {
		#:: Give a 10619 - Enchanted Sapphire
		quest::summonitem(10619);
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

