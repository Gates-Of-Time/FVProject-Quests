sub EVENT_ITEM {
	#:: Match a 18905 -  Worn Rune (Csb I.O.U Dwf 1)
	if (plugin::takeItems(18905 => 1)) {
		quest::say("'Eh, strapling? Ye got this from me ol' partner? Huh. Aye, I know what it means but ye're not hearin'. Here, take this. It was his but he's not needin' it now.");
		#:: Give a random reward:  5037 - Bronze Two Handed Battle Axe, 5029 - Bronze Bastard Sword, 13313 - Dwarven Axe
		quest::summonitem(quest::ChooseRandom(5037, 5029, 13313));
		#:: Ding!
		quest::ding();
		#:: Grant a large amount of experience
		quest::exp(30000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
