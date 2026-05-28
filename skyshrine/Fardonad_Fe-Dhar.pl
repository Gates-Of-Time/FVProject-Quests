sub EVENT_SAY {
	#:: Match if faction is Ally
	if ($faction == 1) {
		if ($text =~ /hail/i) {
			quest::say("Hail, most pious one. I sense the aura of your devotion and conviction and it is strong about you. A shame you are so short lived, mortal. But I see potential in you and for that I shall aid you in your calling if you are a cleric. Do you wish my aid?");
		}
		elsif ($text =~ /i wish your aid/i) {
			quest::say("Then I have a set of goals for you. Once you have achieved them, you shall be rewarded with a helm, a breastplate, armplates, bracers, gauntlets, greaves and boots. May they protect you from your enemies.");
		}
		elsif ($text =~ /helm/i) {
			quest::say("I shall craft a helm for you but you must seek these items out for me first. I have need of an unadorned plate helmet and three pieces of crushed onyx sapphire.");
		}
		elsif ($text =~ /breastplate/i) {
			quest::say("As your faith protects you, so shall this breastplate. I must have an unadorned breastplate and three pieces of black marble.");
		}
		elsif ($text =~ /armplate/i) {
			quest::say("Such lofty goals your kind sets for yourselves. But, that is the way of your kind, I suppose - to seek that which is the most difficult to attain. Bring to me a set of unadorned vambraces and three jaundice gems and you will receive your reward.");
		}
		elsif ($text =~ /bracer/i) {
			quest::say("For the bracers, faithful one, I shall require the acquisition of an unadorned plate bracer as well as three crushed opals.");
		}
		elsif ($text =~ /gauntlet/i) {
			quest::say("I will need a pair of unadorned gauntlets as well as three crushed lava rubies, so that I may make your reward.");
		}
		elsif ($text =~ /greaves/i) {
			quest::say("You shall acquire a pair of unadorned plate greaves and three chipped onyx sapphires for me. I await your return.");
		}
		elsif ($text =~ /boots/i) {
			quest::say("With your aid, I shall make a pair of fine boots for you. All that is needed are a pair of unadorned plate boots and three crushed flame emeralds.");
		}
	}
	else {
		quest::say("You must prove your dedication to the Claws of Veeshan before I will speak to you.");
	}
}

sub EVENT_ITEM {
	#:: Match if faction is Ally
	if ($faction == 1) {
		#:: Match three 25841 - Crushed Onyx Sapphire, and a 24961 - Unadorned Plate Helmet
		if (plugin::takeItems(25841 => 3, 24961 => 1)) {
			#:: Give a 31140 - Akkirus' Crown of the Risen
			quest::summonitem(31140);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25805 - Black Marble, and a 24956 - Unadorned Breastplate
		elsif (plugin::takeItems(25805 => 3, 24956 => 1)) {
			#:: Give a 31141 - Akkirus' Chestplate of the Risen
			quest::summonitem(31141);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25815 - Jaundice Gem, and a 24958 - Unadorned Plate Vambraces
		elsif (plugin::takeItems(25815 => 3, 24958 => 1)) {
			#:: Give a 31142 - Akkirus' Vambraces of the Risen
			quest::summonitem(31142);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25836 - Crushed Opal, and a 24960 - Unadorned Plate Bracer
		elsif (plugin::takeItems(25836 => 3, 24960 => 1)) {
			#:: Give a 31143 - Akkirus' Bracelet of the Risen
			quest::summonitem(31143);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25840 - Crushed Lava Ruby, and a 24962 - Unadorned Plate Gauntlets
		elsif (plugin::takeItems(25840 => 3, 24962 => 1)) {
			#:: Give a 31144 - Akkirus' Gauntlets of the Risen
			quest::summonitem(31144);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25827 - Chipped Onyx Sapphire, and a 24957 - Unadorned Plate Greaves
		elsif (plugin::takeItems(25827 => 3, 24957 => 1)) {
			#:: Give a 31145 - Akkirus' Greaves of the Risen
			quest::summonitem(31145);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25838 - Crushed Flame Emerald, and a 24959 - Unadorned Plate Boots
		elsif (plugin::takeItems(25838 => 3, 24959 => 1)) {
			#:: Give a 31146 - Akkirus' Boots of the Risen
			quest::summonitem(31146);
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


