sub EVENT_ITEM {
	#:: Match 18904 - Faded Wedding Cloth
	if (plugin::takeItems(18904 => 1)) {
		quest::say("I have no words for the gratitude I feel. So many of our young ones have been captured by the filthy orcs. Please, take this for saving my sister.");
		#:: Ding!!
		quest::ding();
		#:: Grant a large amount of experience
		quest::exp(30000);
		#:: Give a random reward: 2012 - Leather Boots, 2004 - Leather Tunic, 2006 - Leather Cloak, 2005 - Leather Shoulderpads, 2011 - Leather Leggings
		quest::summonitem(quest::ChooseRandom(2004, 2005, 2006, 2011, 2012));
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
