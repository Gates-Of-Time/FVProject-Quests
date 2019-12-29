sub EVENT_ITEM {
	#:: Match 50 gold pieces
	if (plugin::takeCoin(0, 0, 50, 0)) {
		quest::say("Since you have given me gold, I will give you gloves. For more magic gloves, give a bloodstone to Tarn Visilin in the Highkeep library.");
		#:: Give a 2354 - Enchanted Gloves
		quest::summonitem(2354);
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
