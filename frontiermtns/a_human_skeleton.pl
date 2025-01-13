sub EVENT_ITEM {
	#:: Match a 20475 - Wood Painting
	if (plugin::takeItems(20475 => 1)) {
		quest::emote("begins to crack and disintegrate, its body collapsing into a pile of dust that scatters into the winds. On the ground you notice a locket on a fine, thin chain which you pick up.");
		#:: Give a 20476 - Silver Chained Locket
		quest::summonitem(20476);
		#:: Ding!
		quest::ding();
		#:: Depop without spawn timer
		quest::depop();
	}
	else {
		quest::emote("will not take this item.");
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}