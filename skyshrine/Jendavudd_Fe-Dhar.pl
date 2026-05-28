sub EVENT_SAY {
	#:: Match if faction is Ally
	if ($faction == 1) {
		if ($text =~ /hail/i) {
			quest::say("Greetings to you. I seek the service of a powerful warrior. If you are not what I seek leave me be.");
		}
		elsif ($text =~ /i am a warrior/i) {
			quest::say("Excellent. I admire strength and ferocity. Life is but a series of battles, is it not?");
		}
		elsif ($text =~ /life is a series of battles/i) {
			quest::say("We share the same view then. I wish to test your skills in battle. Not with me of course, for I will destroy you where you stand. Instead I wish for you to retrieve some trinkets for me and once I have them I will reward you handsomely with a helm, a breastplate, armplates, bracers, gauntlets, greaves, or boots.");
		}
		elsif ($text =~ /helm/i) {
			quest::say("All I require are an unadorned plate helmet and three pieces of crushed coral. This should be a small task for one such as you. Go now and I shall await your return.");
		}
		elsif ($text =~ /breastplate/i) {
			quest::say("As the resolve of your discipline and strength shall endure through a battle, so shall this breastplate. All I required are an unadorned breastplate, and three flawless diamonds. Do this quickly so that you may return to the field of battle.");
		}
		elsif ($text =~ /armplate/i) {
			quest::say("So, a pair of armplates is what you require? Well, I require unadorned plate vambraces, as well as three flawed emeralds before you may receive them. May your deeds be spread throughout the lands!");
		}
		elsif ($text =~ /bracer/i) {
			quest::say("Bracers for the mighty? Retrieve these components and I shall forge the item for you. Bring me an unadorned plate and three crushed flame emeralds.");
		}
		elsif ($text =~ /gauntlet/i) {
			quest::say("Mighty gauntlets to aid in obliterating your foes, eh? It is no easy task but I shall require a pair of unadorned plate gauntlets and three crushed topaz.");
		}
		elsif ($text =~ /greaves/i) {
			quest::say("Strength and balance are important, are they not? I shall help give you an advantage with these leggings. Gather for me three flawed sea sapphires and a set of unadorned plate greaves.");
		}
		elsif ($text =~ /boots/i) {
			quest::say("A pair of boots you shall have once you have gotten a pair of unadorned plate boots as well as three pieces of crushed black marble.");
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
			#:: Give a 31182 - Crown of the Myrmidon
			quest::summonitem(31182);
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
			#:: Give a 31183 - Breastplate of the Myrmidon
			quest::summonitem(31183);
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
			#:: Give a 31184 - Vambraces of the Myrmidon
			quest::summonitem(31184);
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
			#:: Give a 31185 - Bracer of the Myrmidon
			quest::summonitem(31185);
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
			#:: Give a 31186 - Gauntlets of the Myrmidon
			quest::summonitem(31186);
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
			#:: Give a 31187 - Greaves of the Myrmidon
			quest::summonitem(31187);
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
			#:: Give a 31188 - Boots of the Myrmidon
			quest::summonitem(31188);
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


