sub EVENT_SAY {
	#:: Match if faction is Ally
	if ($faction == 1) {
		if ($text =~ /hail/i) {
			quest::say("I wish to speak only to the knights called paladins. If you are what I seek do you wish to partake of my quests?");
		}
		elsif ($text =~ /i wish to partake of your quests/i) {
			quest::say("Excellent. By serving my cause, you, in turn, will further your own. I require certain components to aid me and if you bring them to me, I shall reward you for your honorable service. You may choose from among these items: a helm, a breastplate, armplates, bracers, gauntlets, greaves, and boots.");
		}
		elsif ($text =~ /helm/i) {
			quest::say("All I require are an unadorned plate helmet and three pieces of crushed coral. This should be a small task for one such as you. Go now and I shall await your return.");
		}
		elsif ($text =~ /breastplate/i) {
			quest::say("As the resolve of your faith protects you, so shall this breastplate. All that is required are three flawless diamonds and an unadorned breastplate. Do this quickly so that you may return to the field of battle.");
		}
		elsif ($text =~ /armplate/i) {
			quest::say("So, a pair of armplates is what you require? Well, I require unadorned plate vambraces and three flawed emeralds before you may receive it.");
		}
		elsif ($text =~ /bracer/i) {
			quest::say("Bracers for the mighty? Retrieve these components and I shall forge the item for you. Bring me three crushed flame emeralds and an unadorned plate bracer.");
		}
		elsif ($text =~ /gauntlet/i) {
			quest::say("Mighty gauntlets to smite your foes for the glory of the greater good! It is no easy task but I shall require a pair of unadorned plate gauntlets as well as three crushed topaz.");
		}
		elsif ($text =~ /greaves/i) {
			quest::say("Sturdy are the pillars that support the temple. I shall make you just as strong with these leggings. Gather unadorned plate greaves and three flawed sea sapphires.");
		}
		elsif ($text =~ /boots/i) {
			quest::say("A pair of boots you shall have once you have brought me a pair of unadorned plate boots, and three pieces of crushed black marble.");
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
			#:: Give a 31119 - Scaled Knight's Helm
			quest::summonitem(31119);
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
			#:: Give a 31120 - Scaled Knight's Breastplate
			quest::summonitem(31120);
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
			#:: Give a 31121 - Scaled Knight's Vambraces
			quest::summonitem(31121);
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
			#:: Give a 31122 - Scaled Knight's Bracer
			quest::summonitem(31122);
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
			#:: Give a 31123 - Scaled Knight's Gauntlets
			quest::summonitem(31123);
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
			#:: Give a 31124 - Scaled Knight's Greaves
			quest::summonitem(31124);
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
			#:: Give a 31125 - Scaled Knight's Boots
			quest::summonitem(31125);
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


