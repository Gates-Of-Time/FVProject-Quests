sub EVENT_SAY {
	#:: Match if faction is Ally
	if ($faction == 1) {
		if ($text =~ /hail/i) {
			quest::emote("speaks in a deep tone.");
			quest::say("Greetings. I wish to speak only to a shaman, so I might aid them with protection from the world in the form of armor.");
		}
		elsif ($text =~ /armor/i) {
			quest::say("For you I shall make a coif, breastplate, sleeves, bracers, gauntlets, leggings, and boots. Each piece is a quest unto itself. To seek the components, you must search the lands for them and test the power of the spirit within.");
		}
		elsif ($text =~ /coif/i) {
			quest::say("The coif I shall make will be comprised of an unadorned chain coif and three crushed onyx sapphires. I shall be waiting.");
		}
		elsif ($text =~ /breastplate/i) {
			quest::say("A breastplate to protect the spirit within. I shall make one for you granted that you retrieve the components I shall need. An unadorned chain tunic and three pieces of black marble. I await your return.");
		}
		elsif ($text =~ /sleeves/i) {
			quest::say("Sleeves I shall make upon receipt of unadorned chain sleeves and a set of three jaundice gems. Complete this simple task and they are yours.");
		}
		elsif ($text =~ /bracer/i) {
			quest::say("A bracer of mystic power I shall grant you. All I require is the acquisition of an unadorned chain bracer and three crushed opals.");
		}
		elsif ($text =~ /gauntlet/i) {
			quest::say("I shall require three crushed lava rubies and an unadorned pair of chain gauntlets to complete my ritual.");
		}
		elsif ($text =~ /leggings/i) {
			quest::say("You seek leggings? Then provide for me unadorned chain leggings and three chipped onyx sapphires and I will give them to you for your service.");
		}
		elsif ($text =~ /boots/i) {
			quest::say("These boots will help you in your never-ending quest. I shall grant them upon receipt of a pair of unadorned chain boots and three crushed flame emeralds.");
		}
	}
	else {
		quest::say("You must prove your dedication to the Claws of Veeshan before I will speak to you.");
	}
}

sub EVENT_ITEM {
	#:: Match if faction is Ally
	if ($faction == 1) {
		#:: Match three 25841 - Crushed Onyx Sapphire, and a 24968 - Unadorned Chain Coif
		if (plugin::takeItems(25841 => 3, 24968 => 1)) {
			#:: Give a 31105 - Wolf Caller's Helm
			quest::summonitem(31105);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25805 - Black Marble, and a 24963 - Unadorned Chain Tunic
		elsif (plugin::takeItems(25805 => 3, 24963 => 1)) {
			#:: Give a 31106 - Wolf Caller's Breastplate
			quest::summonitem(31106);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25815 - Jaundice Gem, and a 24965 - Unadorned Chain Sleeves
		elsif (plugin::takeItems(25815 => 3, 24965 => 1)) {
			#:: Give a 31107 - Wolf Caller's Vambraces
			quest::summonitem(31107);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25836 - Crushed Opal, and a 24967 - Unadorned Chain Bracer
		elsif (plugin::takeItems(25836 => 3, 24967 => 1)) {
			#:: Give a 31108 - Wolf Caller's Bracer
			quest::summonitem(31108);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25840 - Crushed Lava Ruby, and a 24969 - Unadorned Chain Gauntlets
		elsif (plugin::takeItems(25840 => 3, 24969 => 1)) {
			#:: Give a 31109 - Wolf Caller's Gauntlets
			quest::summonitem(31109);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25827 - Chipped Onyx Sapphire, and a 24964 - Unadorned Chain Leggings
		elsif (plugin::takeItems(25827 => 3, 24964 => 1)) {
			#:: Give a 31110 - Wolf Caller's Greaves
			quest::summonitem(31110);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25838 - Crushed Flame Emerald, and a 24966 - Unadorned Chain Boots
		elsif (plugin::takeItems(25838 => 3, 24966 => 1)) {
			#:: Give a 31111 - Wolf Caller's Boots
			quest::summonitem(31111);
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


