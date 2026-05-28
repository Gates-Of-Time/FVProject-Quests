sub EVENT_SAY {
	#:: Match if faction is Ally
	if ($faction == 1) {
		if ($text =~ /hail/i) {
			quest::say("Greetings to you. I seek one who calls himself a druid. What do you call yourself, manling?");
		}
		elsif ($text =~ /i am a druid/i) {
			quest::say("Good. I had hoped you were one. As nature's guardian, you fight the never-ending struggle against those who seek to defile it. It is an admirable quality and I wish to aid you. I will provide you with a cap, a tunic, sleeves, bracers, gloves, leggings and boots.");
		}
		elsif ($text =~ /cap/i) {
			quest::say("I shall weave one of exceptional quality for you but you must gather the ingredients first. I require an unadorned leather cap and three crushed onyx sapphires.");
		}
		elsif ($text =~ /tunic/i) {
			quest::say("You shall be a force of nature with this tunic. Once I have gained an unadorned leather tunic and three pieces of black marble, the item is yours.");
		}
		elsif ($text =~ /sleeves/i) {
			quest::say("As the bark protects the limbs of the tree, so shall these sleeves protect your arms. Bring me a pair of unadorned leather sleeves and three jaundice gems.");
		}
		elsif ($text =~ /bracer/i) {
			quest::say("For a bracer I shall require an unadorned leather bracelet as well as three crushed opals. Do this and the reward shall be yours to keep.");
		}
		elsif ($text =~ /gloves/i) {
			quest::say("The gloves shall help protect you from the elements and harm. In order for me to complete them, I require a pair of unadorned leather gloves and three crushed lava rubies.");
		}
		elsif ($text =~ /leggings/i) {
			quest::say("As the roots support the mighty oak, so shall these leggings support you. Furnish me three chipped onyx sapphires and a pair of unadorned leather leggings.");
		}
		elsif ($text =~ /boots/i) {
			quest::say("Even the swiftest feet need protection so I shall provide you with these. They should help. Acquire a pair of unadorned boots and a set of three crushed flame emeralds and a new set of boots will be yours.");
		}
	}
	else {
		quest::say("You must prove your dedication to the Claws of Veeshan before I will speak to you.");
	}
}

sub EVENT_ITEM {
	#:: Match if faction is Ally
	if ($faction == 1) {
		#:: Match three 25841 - Crushed Onyx Sapphire, and a 24975 - Unadorned Leather Cap
		if (plugin::takeItems(25841 => 3, 24975 => 1)) {
			#:: Give a 31147 - Woven Grass Headband
			quest::summonitem(31147);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25805 - Black Marble, and a 24970 - Unadorned Leather Tunic
		elsif (plugin::takeItems(25805 => 3, 24970 => 1)) {
			#:: Give a 31148 - Woven Grass Chestguard
			quest::summonitem(31148);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25815 - Jaundice Gem, and a 24972 - Unadorned Leather Sleeves
		elsif (plugin::takeItems(25815 => 3, 24972 => 1)) {
			#:: Give a 31149 - Woven Grass Vambraces
			quest::summonitem(31149);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25836 - Crushed Opal, and a 24974 - Unadorned Leather Bracelet
		elsif (plugin::takeItems(25836 => 3, 24974 => 1)) {
			#:: Give a 31150 - Woven Grass Bracelet
			quest::summonitem(31150);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25840 - Crushed Lava Ruby, and a 24976 - Unadorned Leather Gloves
		elsif (plugin::takeItems(25840 => 3, 24976 => 1)) {
			#:: Give a 31151 - Woven Grass Gauntlets
			quest::summonitem(31151);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25827 - Chipped Onyx Sapphire, and a 24971 - Unadorned Leather Leggings
		elsif (plugin::takeItems(25827 => 3, 24971 => 1)) {
			#:: Give a 31152 - Woven Grass Greaves
			quest::summonitem(31152);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25838 - Crushed Flame Emerald, and a 24973 - Unadorned Leather Boots
		elsif (plugin::takeItems(25838 => 3, 24973 => 1)) {
			#:: Give a 31153 - Woven Grass Boots
			quest::summonitem(31153);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		else {
			quest::say("I can do nothing with these items, $name.");
		}
	}
	else {
		quest::say("I do not know you well enough to entrust such an item to you, yet.");
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}


