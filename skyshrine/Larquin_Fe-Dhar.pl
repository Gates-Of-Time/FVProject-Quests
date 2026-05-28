sub EVENT_SAY {
	#:: Match if faction is Ally
	if ($faction == 1) {
		if ($text =~ /hail/i) {
			quest::say("Greetings, I am looking for one who is one with the wild beasts of the world. Do you call yourself a Beastlord?");
		}
		elsif ($text =~ /i am a beastlord/i) {
			quest::say("I have been waiting for one such as you to arrive. I have some equipment that is worthy of a great Beastlord. I have a cap, leggings, tunic, bracer, boots, sleeves, and gloves if you think you are worthy.");
		}
		elsif ($text =~ /cap/i) {
			quest::say("I shall weave one of exceptional quality for you but you must gather the items first. I require an unadorned leather cap and three pieces of crushed coral.");
		}
		elsif ($text =~ /tunic/i) {
			quest::say("You shall be an imposing force with this tunic. Solid as the unmoving mountains, it shall protect you. Once I have gained a set of three flawless diamonds and an unadorned leather tunic.");
		}
		elsif ($text =~ /sleeves/i) {
			quest::say("As the mighty stone that parts the flow of water, so shall these sleeves divert harm against you. Bring me a pair of unadorned leather sleeves and three flawed emeralds.");
		}
		elsif ($text =~ /bracer/i) {
			quest::say("For a bracer I shall require three crushed flame emeralds and an unadorned leather bracelet. Bring me these items and the reward shall be yours to keep.");
		}
		elsif ($text =~ /gloves/i) {
			quest::say("Your hands are like the wind, everflowing and moving. Subtle one moment, then a howling wind raining blow upon blow to your foes. These gloves shall aid you. In order for me to complete them, I require a pair of unadorned leather gloves and three crushed topaz.");
		}
		elsif ($text =~ /leggings/i) {
			quest::say("The leggings shall protect you, as the valley shelters the still pool within it from the howling winds. Furnish a pair of unadorned leather leggings and three flawed sea sapphires.");
		}
		elsif ($text =~ /boots/i) {
			quest::say("Your feet are as hard as any stone and as swift as a coiled serpent but even the swiftest feet require protection so I shall provide you with these. They should help. Acquire a pair of unadorned leather boots and three crushed pieces of black marble.");
		}
	}
	else {
		quest::say("You must prove your dedication to the Claws of Veeshan before I will speak to you.");
	}
}

sub EVENT_ITEM {
	#:: Match if faction is Ally
	if ($faction == 1) {
		#:: Match three 25831 - Crushed Coral, and a 24975 - Unadorned Leather Cap
		if (plugin::takeItems(25831 => 3, 24975 => 1)) {
			#:: Give a 5446 - Savage Helm
			quest::summonitem(5446);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25814 - Flawless Diamond, and a 24970 - Unadorned Leather Tunic
		elsif (plugin::takeItems(25814 => 3, 24970 => 1)) {
			#:: Give a 5447 - Savage Chestguard
			quest::summonitem(5447);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25821 - Flawed Emerald, and a 24972 - Unadorned Leather Sleeves
		elsif (plugin::takeItems(25821 => 3, 24972 => 1)) {
			#:: Give a 5448 - Savage Armband
			quest::summonitem(5448);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25838 - Crushed Flame Emerald, and a 24974 - Unadorned Leather Bracelet
		elsif (plugin::takeItems(25838 => 3, 24974 => 1)) {
			#:: Give a 5449 - Savage Bracer
			quest::summonitem(5449);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25832 - Crushed Topaz, and a 24976 - Unadorned Leather Gloves
		elsif (plugin::takeItems(25832 => 3, 24976 => 1)) {
			#:: Give a 5450 - Savage Gloves
			quest::summonitem(5450);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25825 - Flawed Sea Sapphire, and a 24971 - Unadorned Leather Leggings
		elsif (plugin::takeItems(25825 => 3, 24971 => 1)) {
			#:: Give a 5451 - Savage Leggings
			quest::summonitem(5451);
			quest::emote("smiles warmly as he hands you your reward.");
			quest::say("Well done, $name.");
			#:: Grant a large amount of experience
			quest::exp(175000);
			#:: Set factions
			quest::faction(430, 30);	#:: + Claws of Veeshan
			quest::faction(436, 30);	#:: + Yelinak
			quest::faction(448, -60);	#:: - Kromzek
		}
		#:: Match three 25833 - Crushed Black Marble, and a 24973 - Unadorned Leather Boots
		elsif (plugin::takeItems(25833 => 3, 24973 => 1)) {
			#:: Give a 5452 - Savage Boots
			quest::summonitem(5452);
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


