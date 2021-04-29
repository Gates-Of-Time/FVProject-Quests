sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings $name. We do not get too many visitors to the island. I have a few pieces of armor for sale, fashioned for the small of course.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13995 - Knight
	if (plugin::takeItems(13995 => 1)) {
		quest::say("Ahh! You must have been sent by Beno of the Stormguard. I have been wondering when he would return my card. I have not been playing with a full deck. How about a reward? Hmm. Let's see what I have lying around... Here! Take this. I cannot possibly give you any of my good armor.");
		#:: Randomly reward 3301 - Dwarven Ringmail Tunic, 3048 - Blackened Iron Bracers, 3042 - Blackened Iron Collar, 3050 - Blackened Iron Legplates, 3044 - Blackened Iron Spaulder, 9009 - Small Buckler, 7012 - Bronze Dagger, 3111 - Ringmail Pants, 3110 - Ringmail Gloves, 7015 - Bronze Main Gauche
		quest::summonitem(quest::ChooseRandom(3301, 3048, 3042, 3050, 3044, 9009, 7012, 3103, 3111, 3110, 7015));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(312, 5);		#:: + Storm Guard
		quest::faction(274, 1);		#:: + Kazon Stormhammer
		quest::faction(293, 1);		#:: + Miners Guild 249
		quest::faction(290, 1);		#:: + Merchants of Kaladim
		quest::faction(232, -1);	#:: - Craknek Warriors
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
