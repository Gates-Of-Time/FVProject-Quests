sub EVENT_SAY {
	#:: Match if faction is Ally
	if ($faction == 1) {
		if ($text =~ /hail/i) {
			quest::say("What do we have here? A cutthroat, perhaps? If you are a rogue, I may have use for you. I am in need of certain components and will reward you well if they are brought to me. Do I have your services?");
		}
		elsif ($text =~ /you have my services/i) {
			quest::say("Excellent. Now, down to business. I shall pay you in trade for the items I seek. What I have for you is as such, a coif, a breastplate, armplates, bracers, gauntlets, greaves and boots. These should aid you in your skullduggery.");
		}
		elsif ($text =~ /coif/i) {
			quest::say("I am in need of an unadorned chain coif and three crushed pieces of coral. For your services I shall give you a coif suitable for one such as you.");
		}
		elsif ($text =~ /breastplate/i) {
			quest::say("For the breastplate you must seek out an unadorned chain tunic and three flawless diamonds. Only then will you receive a breastplate of my crafting.");
		}
		elsif ($text =~ /armplate/i) {
			quest::say("For the armplates I shall give you, I require these: unadorned chain sleeves and three flawed emeralds.");
		}
		elsif ($text =~ /bracer/i) {
			quest::say("An unadorned bracer and three crushed flame emeralds are what I require of you. A bracer of my making is your reward.");
		}
		elsif ($text =~ /gauntlet/i) {
			quest::say("I need unadorned chain gauntlets and a set of three crushed topaz. Once I have these, you shall have your reward.");
		}
		elsif ($text =~ /greaves/i) {
			quest::say("A pair of leggings will be yours once you complete this task for me, thief. A pair of unadorned chain leggings and three flawed sea sapphires are all I require.");
		}
		elsif ($text =~ /boots/i) {
			quest::say("A fine pair of boots shall you have to skulk around in, once you bring me a pair of unadorned chain boots and three pieces of crushed black marble.");
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
			#:: Give a 31126 - Shadow Crown
			quest::summonitem(31126);
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
			#:: Give a 31127 - Shadow Chestguard
			quest::summonitem(31127);
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
			#:: Give a 31128 - Shadow Vambraces
			quest::summonitem(31128);
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
			#:: Give a 31129 - Shadow Bracer
			quest::summonitem(31129);
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
			#:: Give a 31130 - Shadow Gauntlets
			quest::summonitem(31130);
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
			#:: Give a 31131 - Shadow Greaves
			quest::summonitem(31131);
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
			#:: Give a 31132 - Shadow Boots
			quest::summonitem(31132);
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


