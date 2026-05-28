sub EVENT_SAY {
	#:: Match if faction is Ally
	if ($faction == 1) {
		if ($text =~ /hail/i) {
			quest::say("Greetings, I seek the ones who stalk through the forests protecting it. If you are one known as a ranger, submit to my will and become stronger. The tasks I set forth will not be easy. Are you ready to submit to my will?");
		}
		elsif ($text =~ /submit to your will/i) {
			quest::say("That is good, for there is nothing like the wrath of nature, woodland warrior. And Nature's wrath shall you be, with this armor to protect you in your struggle. I shall forge a coif, breastplate, sleeves, bracers, gauntlets, leggings, and boots for you.");
		}
		elsif ($text =~ /coif/i) {
			quest::say("This coif shall protect you from battle and the elements. What I require of you are these: an unadorned chain coif and three pieces of crushed coral. Do not waste precious time!");
		}
		elsif ($text =~ /breastplate/i) {
			quest::say("Even as the hardest tree in the forest gains protection from its bark, so shall you gain the protection of this breastplate. Bring these components for me - an unadorned chain tunic and three flawless diamonds.");
		}
		elsif ($text =~ /sleeves/i) {
			quest::say("I require unadorned chain sleeves, as well as three flawed emeralds. Do this so that I may grant you them as a gift for your diligence.");
		}
		elsif ($text =~ /bracer/i) {
			quest::say("This shall help shield your forearms from any stray blows. Bring me an unadorned chain bracelet and three crushed flame emeralds.");
		}
		elsif ($text =~ /gauntlet/i) {
			quest::say("Bring me these items, for I will not grant you your pair until then - a pair of unadorned chain gauntlets and a set of three crushed topaz.");
		}
		elsif ($text =~ /leggings/i) {
			quest::say("A pair of leggings you seek? I seek something as well. Bring me a pair of unadorned chain leggings and three flawed sea sapphires. Go now. The struggle continues as we speak.");
		}
		elsif ($text =~ /boots/i) {
			quest::say("For the boots, I shall require a pair of unadorned chain boots as well as three pieces of crushed black marble.");
		}
	}
	else {
		quest::say("You must prove your dedication to the Claws of Veeshan before I will speak to you.");
	}
}

sub EVENT_ITEM {
	#:: Match if faction is Ally
	if ($faction == 1) {
		#:: Match three 25831 - Crushed Coral, and a 24968 - Unadorned Chain Coif
		if (plugin::takeItems(25831 => 3, 24968 => 1)) {
			#:: Give a 31112 - Golden Leaf Helm
			quest::summonitem(31112);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25814 - Flawless Diamond, and a 24963 - Unadorned Chain Tunic
		elsif (plugin::takeItems(25814 => 3, 24963 => 1)) {
			#:: Give a 31113 - Golden Leaf Breastplate
			quest::summonitem(31113);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25821 - Flawed Emerald, and a 24965 - Unadorned Chain Sleeves
		elsif (plugin::takeItems(25821 => 3, 24965 => 1)) {
			#:: Give a 31114 - Golden Leaf Vambraces
			quest::summonitem(31114);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25838 - Crushed Flame Emerald, and a 24967 - Unadorned Chain Bracer
		elsif (plugin::takeItems(25838 => 3, 24967 => 1)) {
			#:: Give a 31115 - Golden Leaf Bracer
			quest::summonitem(31115);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25832 - Crushed Topaz, and a 24969 - Unadorned Chain Gauntlets
		elsif (plugin::takeItems(25832 => 3, 24969 => 1)) {
			#:: Give a 31116 - Golden Leaf Gauntlets
			quest::summonitem(31116);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25825 - Flawed Sea Sapphire, and a 24964 - Unadorned Chain Leggings
		elsif (plugin::takeItems(25825 => 3, 24964 => 1)) {
			#:: Give a 31117 - Golden Leaf Greaves
			quest::summonitem(31117);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25833 - Crushed Black Marble, and a 24966 - Unadorned Chain Boots
		elsif (plugin::takeItems(25833 => 3, 24966 => 1)) {
			#:: Give a 31118 - Golden Leaf Boots
			quest::summonitem(31118);
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


