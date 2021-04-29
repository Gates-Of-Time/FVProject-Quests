sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings $name. We do not get too many visitors to the island. I have a few pieces of armor for sale, fashioned for the small of course.");
	}
}

sub EVENT_ITEM {
	#:: Match if faction is Amiable or better
	if ($faction <= 4) {
		#:: Match a 13995 - Knight
		if (plugin::takeItems(13995 => 1)) {
			quest::say("Ahh! You must have been sent by Beno of the Stormguard. I have been wondering when he would return my card. I have not been playing with a full deck. How about a reward? Hmm. Let's see what I have lying around... Here! Take this. I cannot possibly give you any of my good armor.");
			my $random = int(rand(100)) + 1;
			if ($random <= 5) {
				#:: Give a 3301 - Dwarven Ringmail Tunic
				quest::summonitem(3301);
			}
			elsif ($random <= 15) {
				#:: Give a random Blackened Iron Armor reward:  3040 - Blackened Iron Coif, 3042 - Blackened Iron Collar, 3043 - Blackened Iron Mail, 3044 - Blackened Iron Spaulder, 3046 - Blackened Iron Waistband, 3047 - Blackened Iron Armplates, 3048 - Blackened Iron Bracers, 3049 - Blackened Iron Gloves, 3050 - Blackened Iron Legplates, 3051 - Blackened Iron Boots
				quest::summonitem(quest::ChooseRandom(3040, 3042, 3043, 3044, 3046, 3047, 3048, 3049, 3050, 3051));
			}
			elsif ($random <= 35) {
				#:: Give a random Small Bronze Armor reward: 4213 - Small Bronze Helm, 4214 - Small Bronze Mask, 4215 - Small Bronze Collar, 4216 - Small Bronze Breastplate, 4217 - Small Bronze Pauldron, 4218 - Small Splinted Bronze Cloak, 4219 - Small Bronze Girdle, 4220 - Small Bronze Vambraces, 4221 - Small Bronze Bracers, 4222 - Small Bronze Gauntlets, 4223 - Small Bronze Greaves, 4224 - Small Bronze Boots
				quest::summonitem(quest::ChooseRandom(4213, 4214, 4215, 4216, 4217, 4218, 4219, 4220, 4221, 4222, 4223, 4224));
			}
			elsif ($random <= 55) {
				#:: Give a random Small Ringmail Armor reward:  3113 - Small Ringmail Coif, 3115 - Small Ringmail Neckguard, 3116 - Small Ringmail Coat, 3117 - Small Ringmail Mantle, 3118 - Small Ringmail Cape, 3119 - Small Ringmail Belt, 3120 - Small Ringmail Sleeves, 3121 - Small Ringmail Bracelet, 3122 - Small Ringmail Gloves, 3123 - Small Ringmail Pants, 3124 - Small Ringmail Boots
				quest::summonitem(quest::ChooseRandom(3113, 3115, 3116, 3117, 3118, 3119, 3120, 3121, 3122, 3123, 3124));
			}
			else {
				#:: Give a random reward:  9009 - Small Buckler, 7015 - Bronze Main Gauche, 7012 - Bronze Dagger, 5024 - Rusty Halberd
				quest::summonitem(quest::ChooseRandom(9009, 7015, 7012, 5024));
			}
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
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
