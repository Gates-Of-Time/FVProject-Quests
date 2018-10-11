sub EVENT_ITEM {
	#:: Match 18903 - Tattered Cloth Note
	if (plugin::takeItems(18903 => 1)) {
		quest::say("My brother still lives? Thank you for this news. Please, take this with my deepest thanks.");
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(30000);
		#:: Give a random reward:  2007 - Leather Belt, 2004 - Leather Tunic, 2006 - Leather Cloak, 2010 - Leather Gloves, 2011 - Leather Leggings
		quest::summonitem(quest::ChooseRandom(2007, 2004, 2006, 2010, 2011));
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
