sub EVENT_SAY {
	#:: Match if faction is Ally
	if ($faction == 1) {
		if ($text =~ /hail/i) {
			quest::emote("looks around.");
			quest::say("Who dares address me? Oh, it is you. What is it you want? Some armor perhaps? To make a pretty corpse? There is something exquisite about a well-dressed meal. If you are not a shadowknight leave me now or you may end up as my next meal.");
		}
		elsif ($text =~ /armor/i) {
			quest::emote("laughs deeply.");
			quest::say("You manlings are so transparent. Well, if armor is what you wish, then only the best shall you have for I will not waste my time on less than the best. This is what I will make for you, granted that you can acquire the components for me - a helm, breastplate, armplates, bracers, gauntlets, leggings, and boots.");
		}
		elsif ($text =~ /helm/i) {
			quest::say("For the helm I shall require an unadorned plate helmet and three pieces of crushed coral for my trouble. Does your tiny mind comprehend the task set before you? If so, then get them immediately! I am beginning to get hungry and you are looking all the better as a snack.");
		}
		elsif ($text =~ /breastplate/i) {
			quest::say("For the breastplate, I require an unadorned breastplate and three flawless diamonds. Nothing more, nothing less. For perfection, there is a price, insignificant one.");
		}
		elsif ($text =~ /armplate/i) {
			quest::say("For the armplates, I need these components - unadorned plate vambraces as well as three flawed emeralds. Now go and fetch them before I change my mind.");
		}
		elsif ($text =~ /bracer/i) {
			quest::say("For the bracers, I will require an unadorned plate bracer and a set of three crushed flame emeralds. Now go away before I use your insides as decoration for my gullet.");
		}
		elsif ($text =~ /gauntlet/i) {
			quest::say("Your hands are quite important, aren't they? For without them, you cannot use your precious weapons or shields to protect yourselves. You humor me with your feeble attempts. Fetch me a set of unadorned plate gauntlets and three crushed topaz for your precious little gauntlets.");
		}
		elsif ($text =~ /legging/i) {
			quest::say("Legs?? They are my favorite part of a meal. Some of my brethren consider them too tough, but I like them chewy. Don't you agree? Oh, yes, where was I? The leggings. Go and retrieve unadorned plate greaves as well as three flawed sea sapphires. Leave my sight before I sample one of yours.");
		}
		elsif ($text =~ /boots/i) {
			quest::say("You wish to have a pair of boots? Then acquire these items for me. Three pieces of crushed black marble and a pair of unadorned plate boots. I tire of your prattle. Go away now.");
		}
	}
	else {
		quest::say("You must prove your dedication to the Claws of Veeshan before I will speak to you.");
	}
}

sub EVENT_ITEM {
	#:: Match if faction is Ally
	if ($faction == 1) {
		#:: Match three 25831 - Crushed Coral, and a 24961 - Unadorned Plate Helmet
		if (plugin::takeItems(25831 => 3, 24961 => 1)) {
			#:: Give a 31098 - Blood Lord's Crown
			quest::summonitem(31098);t::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25814 - Flawless Diamond, and a 24956 - Unadorned Breastplate
		elsif (plugin::takeItems(25814 => 3, 24956 => 1)) {
			#:: Give a 31099 - Blood Lord's Breastplate
			quest::summonitem(31099);t::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25821 - Flawed Emerald, and a 24958 - Unadorned Plate Vambraces
		elsif (plugin::takeItems(25821 => 3, 24958 => 1)) {
			#:: Give a 31100 - Blood Lord's Vambraces
			quest::summonitem(31100);t::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25838 - Crushed Flame Emerald, and a 24960 - Unadorned Plate Bracer
		elsif (plugin::takeItems(25838 => 3, 24960 => 1)) {
			#:: Give a 31101 - Blood Lord's Bracer
			quest::summonitem(31101);t::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25832 - Crushed Topaz, and a 24962 - Unadorned Plate Gauntlets
		elsif (plugin::takeItems(25832 => 3, 24962 => 1)) {
			#:: Give a 31102 - Blood Lord's Gauntlets
			quest::summonitem(31102);t::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25825 - Flawed Sea Sapphire, and a 24957 - Unadorned Plate Greaves
		elsif (plugin::takeItems(25825 => 3, 24957 => 1)) {
			#:: Give a 31103 - Blood Lord's Greaves
			quest::summonitem(31103);t::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25833 - Crushed Black Marble, and a 24959 - Unadorned Plate Boots
		elsif (plugin::takeItems(25833 => 3, 24959 => 1)) {
			#:: Give a 31104 - Blood Lord's Boots
			quest::summonitem(31104);t::emote("smiles warmly as he hands you your reward.");
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


