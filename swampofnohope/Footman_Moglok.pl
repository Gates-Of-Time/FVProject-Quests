sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("looks at you with sorrowful eyes and wipes his dripping nose. 'Woe is me. I am nothing more than a lowly footman. And spare me the smart remarks - 'Moglok the Froglok' - I have heard all the jokes.'");
	}
}

sub EVENT_ITEM {
	#:: Match a 18234 - Sealed Note
	if (plugin::takeItems(18234 => 1)) {
		quest::emote("beams a big smile. 'Oh, joy! They have finally sent someone to help me on my mission! I was once a trooper, but I got demoted. I failed to bring Warlord Hikyg the three heads of the Gubbnubb triplets. Here is one head, but we need them all. Track the other two down and take all three heads and your soldier pike to Warlord Hikyg. I quit this outfit!!'");
		#:: Give a 12435 - Froglok Head
		quest::summonitem(12435);
	}
	
	#:: Return unused items
	plugin::returnUnusedItems();
}
