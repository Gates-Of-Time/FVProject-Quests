sub EVENT_ITEM {
	#:: Match a 20458 - Grocery List
	if (plugin::takeItems(20458 => 1)) {
		quest::say("You hardly look like the type of errand runner Farios usually sends out to fetch his groceries but here they are. I hope he chokes on them. Oh, and tell him he still owes me five gold for his last order!");
		#:: Give a 20459 - Bag of Provisions
		quest::summonitem(20459);
		#:: Ding!
		quest::ding();
	}
	else {
		quest::emote("will not take this item.");
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}