sub EVENT_ITEM {
	#:: Match a 18008 - Words of Wealth
	if (plugin::takeItems(18008 => 1)) {
		#:: Give a 17326 - Empty Pot of Gold
		quest::summonitem(17326);
		quest::say("Ay!!! this is poifect! 'ere take this pot o' gold. It's empty at the moment. Go ask my brother Vinny about the pot and mebbe he'll have a clue how ta get it full agin.");
	}
	else {
		quest::say("I have no interest in this.");
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}
