sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("I, Brewer Prixal, am the maker of the heartiest drinks in all of Kunark! Have a look at my astonishing assortment of beverages!");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
