sub EVENT_SAY {
	#:: Match if faction is Ally
	if ($faction < 2) {
		if ($text =~ /Hail/i) {
			quest::say("Hail! What news and stories have you from the New World? Perhaps if you are a bard you can spin me stories of those lands. Oh, I forget my manners. We shall exchange talk another time. You seek something, do you not? A new outfit perhaps?");
		}
		elsif ($text =~ /outfit/i) {
			quest::say("Well, then I have just what you need. Now, my terms of payment are thus, you gather some things for me and in return I shall craft you the finest armor a bard has ever seen! A new outfit comprised of a helm, breastplate, armplates, bracers, gauntlets, greaves, and boots shall make you the envy of your peers, my little friend.");
		}
		elsif ($text =~ /helm/i) {
			quest::say("A brand new shiny helm shall be yours once I have an unadorned plate helmet and three pieces of crushed coral. May the audience swoon in your presence.");
		}
		elsif ($text =~ /breastplate/i) {
			quest::say("I have need of an unadorned breastplate and three flawless diamonds. Find these for me and I shall craft you a breastplate, minstrel. May it protect you from unruly audiences with rotten vegetables.");
		}
		elsif ($text =~ /armplate/i) {
			quest::say("A gorgeous pair of armplates shall be yours once you have retrieved a set of three flawed emeralds and a pair of unadorned plate vambraces. The detail and craftsmanship are stunning!");
		}
		elsif ($text =~ /bracer/i) {
			quest::say("A pair of bracers shall be yours upon receipt of an unadorned plate bracer and three crushed flame emeralds. May your songs never falter during a tactical retreat.");
		}
		elsif ($text =~ /gauntlet/i) {
			quest::say("It would be a shame if your hands were to be injured wouldn't it? I shall craft some gauntlets so that your nimble digits remain intact. Bring me a pair of unadorned plate gauntlets as well as three crushed topaz.");
		}
		elsif ($text =~ /greaves/i) {
			quest::say("Some new greaves would do you some good. The pair you have now looks quite stained and worn. Fetch me a pair of unadorned plate greaves and three flawed sea sapphires.");
		}
		elsif ($text =~ /boots/i) {
			quest::say("A fancy pair of boots you want, is it? Yes, I can see the pair you have now looks a bit worn from running so much. All I require are a pair of unadorned plate boots and three crushed pieces of black marble.");
		}
	}
	else {
		quest::say("You must prove your dedication to the Claws of Veeshan before I will speak to you.");
	}
}

sub EVENT_ITEM {
	#:: Match if faction is Ally
	if ($faction < 2) {
		#:: Match three 25831 - Crushed Coral, and a 24961 - Unadorned Plate Helmet
		if (plugin::takeItems(25831 => 3, 24961 => 1)) {
			#:: Give a 31133 - Helm of Twilight
			quest::summonitem(31133);
			quest::emote("smiles warmly as he hands you your reward.");
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
			#:: Give a 31134 - Breastplate of Twilight
			quest::summonitem(31134);
			quest::emote("smiles warmly as he hands you your reward.");
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
			#:: Give a 31135 - Vambraces of Twilight
			quest::summonitem(31135);
			quest::emote("smiles warmly as he hands you your reward.");
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
			#:: Give a 31136 - Bracer of Twilight
			quest::summonitem(31136);
			quest::emote("smiles warmly as he hands you your reward.");
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
			#:: Give a 31137 - Gauntlets of Twilight
			quest::summonitem(31137);
			quest::emote("smiles warmly as he hands you your reward.");
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
			#:: Give a 31138 - Greaves of Twilight
			quest::summonitem(31138);
			quest::emote("smiles warmly as he hands you your reward.");
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
			#:: Give a 31139 - Boots of Twilight
			quest::summonitem(31139);
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


