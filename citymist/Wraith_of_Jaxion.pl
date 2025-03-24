sub EVENT_ITEM {
	#:: Match a 10633 - Dull Ruby
	if (plugin::takeItems(10633 => 1)) {
		#:: Give a 10620 - Enchanted Ruby
		quest::summonitem(10620);
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
