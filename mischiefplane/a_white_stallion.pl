sub EVENT_ITEM {
	#:: Match a 22856 - Lithiniath's Horn
	if (plugin::takeItems(22856 => 1)) {
		quest::say("The madness has fled my mind and I am once again whole! Give Gelistial my regards, I must leave this place and try to quell the madness I have inflicted.");
		#:: Give a 24869 - Crest of the Unicorn
		quest::summonitem(24869);
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}
