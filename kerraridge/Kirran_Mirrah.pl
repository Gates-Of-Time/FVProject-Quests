sub EVENT_ITEM {
	#:: Match a 9968 - Smelly Sealed Bag
	if (plugin::takeItems(9968 => 1)) { 
		quest::say("Ahhhhhhhh! I can't believe that you ---- ahhhhhhhh! Die you, you, you evil evil heretic!");
		quest::attack($name);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
