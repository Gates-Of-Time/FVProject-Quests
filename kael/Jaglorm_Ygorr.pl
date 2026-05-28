sub EVENT_SAY {
    #:: Match if faction is Ally
    if ($faction == 1) {
        if ($text =~ /hail/i) {
            quest::say("Greetings to you. I seek one that calls himself a druid. What do you call yourself, manling?");
        }
        elsif ($text =~ /i am a druid/i) {
            quest::say("Good. I had hoped you were one. As nature's guardian, you fight the never-ending struggle against those who seek to defile it. It is an admirable quality and I wish to aid you. I will provide you with a cap, a tunic, sleeves, bracers, gloves, leggings and boots.");
        }
        elsif ($text =~ /cap/i) {
            quest::say("I shall weave one of exceptional quality for you but you must gather the ingredients first. I require an ancient leather cap and three crushed onyx sapphires.");
        }
        elsif ($text =~ /tunic/i) {
            quest::say("You shall be a force of nature with this tunic. Once I have gained an ancient leather tunic and three pieces of black marble the item is yours.");
        }
        elsif ($text =~ /sleeves/i) {
            quest::say("As the bark protects the limbs of the tree, so shall these sleeves protect your arms. Bring me a pair of an ancient leather sleeves and three jaundice gems.");
        }
        elsif ($text =~ /bracer/i) {
            quest::say("For a bracer I shall require an ancient leather bracelet, and three crushed opals. Do this and the reward shall be yours to keep.");
        }
        elsif ($text =~ /gloves/i) {
            quest::say("The gloves shall help protect you from the elements and harm. In order for me to complete them I require a pair of an ancient leather gloves and three crushed lava rubys.");
        }
        elsif ($text =~ /leggings/i) {
            quest::say("As the roots support the mighty oak, so shall these leggings support you. Furnish a pair of an ancient leather leggings as well as three chipped onyx sapphires and they are yours.");
        }
        elsif ($text =~ /boots/i) {
            quest::say("Even the swiftest feet need protection so I shall provide you with these. They should help. Acquire a pair of ancient boots and three crushed flame emeralds.");
        }
    }
    #:: Match if faction is worse than Ally
    else {
        quest::say("You must prove your dedication to Kael Drakkal and the Kromzek clan before I will speak to you.");
    }
}

sub EVENT_ITEM {
    #:: Match if faction is Ally
    if ($faction == 1) {
        #:: Match a 25841 - Crushed Onyx Sapphire and a 24919 - Ancient Leather Cap
        if (plugin::takeItems(25841 => 3, 24919 => 1)) {
            #:: Give a 25398 - Nature Walker's Circlet
            quest::summonitem(25398);
            #:: Grant a large amount of experience
            quest::exp(150000);
            #:: Set factions
			quest::faction(429, 20);  #:: + King Tormax
			quest::faction(448, 20);  #:: + Kromzek
			quest::faction(430, -20); #:: - Claws of Veeshan
			quest::faction(406, -60); #:: - Coldain
            quest::emote("smiles warmly as he hands you your reward.");
            quest::say("You have done well.");
        }
        #:: Match a 25805 - Black Marble and a 24914 - Ancient Leather Tunic
        elsif (plugin::takeItems(25805 => 3, 24914 => 1)) {
            #:: Give a 25399 - Nature Walker's Tunic
            quest::summonitem(25399);
            #:: Grant a large amount of experience
            quest::exp(150000);
            #:: Set factions
			quest::faction(429, 20);  #:: + King Tormax
			quest::faction(448, 20);  #:: + Kromzek
			quest::faction(430, -20); #:: - Claws of Veeshan
			quest::faction(406, -60); #:: - Coldain
            quest::emote("smiles warmly as he hands you your reward.");
            quest::say("You have done well.");
        }
        #:: Match a 25815 - Jaundice Gem and a 24916 - Ancient Leather Sleeves
        elsif (plugin::takeItems(25815 => 3, 24916 => 1)) {
            #:: Give a 25400 - Nature Walker's Vambraces
            quest::summonitem(25400);
            #:: Grant a large amount of experience
            quest::exp(150000);
            #:: Set factions
			quest::faction(429, 20);  #:: + King Tormax
			quest::faction(448, 20);  #:: + Kromzek
			quest::faction(430, -20); #:: - Claws of Veeshan
			quest::faction(406, -60); #:: - Coldain
            quest::emote("smiles warmly as he hands you your reward.");
            quest::say("You have done well.");
        }
        #:: Match a 25836 - Crushed Opal and a 24918 - Ancient Leather Bracelet
        elsif (plugin::takeItems(25836 => 3, 24918 => 1)) {
            #:: Give a 25401 - Nature Walker's Bracer
            quest::summonitem(25401);
            #:: Grant a large amount of experience
            quest::exp(150000);
            #:: Set factions
			quest::faction(429, 20);  #:: + King Tormax
			quest::faction(448, 20);  #:: + Kromzek
			quest::faction(430, -20); #:: - Claws of Veeshan
			quest::faction(406, -60); #:: - Coldain
            quest::emote("smiles warmly as he hands you your reward.");
            quest::say("You have done well.");
        }
        #:: Match a 25840 - Crushed Lava Ruby and a 24920 - Ancient Leather Gloves
        elsif (plugin::takeItems(25840 => 3, 24920 => 1)) {
            #:: Give a 25402 - Nature Walker's Gauntlets
            quest::summonitem(25402);
            #:: Grant a large amount of experience
            quest::exp(150000);
            #:: Set factions
			quest::faction(429, 20);  #:: + King Tormax
			quest::faction(448, 20);  #:: + Kromzek
			quest::faction(430, -20); #:: - Claws of Veeshan
			quest::faction(406, -60); #:: - Coldain
            quest::emote("smiles warmly as he hands you your reward.");
            quest::say("You have done well.");
        }
        #:: Match a 25827 - Chipped Onyx Sapphire and a 24915 - Ancient Leather Leggings
        elsif (plugin::takeItems(25827 => 3, 24915 => 1)) {
            #:: Give a 25403 - Nature Walker's Greaves
            quest::summonitem(25403);
            #:: Grant a large amount of experience
            quest::exp(150000);
            #:: Set factions
			quest::faction(429, 20);  #:: + King Tormax
			quest::faction(448, 20);  #:: + Kromzek
			quest::faction(430, -20); #:: - Claws of Veeshan
			quest::faction(406, -60); #:: - Coldain
            quest::emote("smiles warmly as he hands you your reward.");
            quest::say("You have done well.");
        }
        #:: Match a 25838 - Crushed Flame Emerald and a 24917 - Ancient Leather Boots
        elsif (plugin::takeItems(25838 => 3, 24917 => 1)) {
            #:: Give a 25404 - Nature Walker's Boots
            quest::summonitem(25404);
            #:: Grant a large amount of experience
            quest::exp(150000);
            #:: Set factions
			quest::faction(429, 20);  #:: + King Tormax
			quest::faction(448, 20);  #:: + Kromzek
			quest::faction(430, -20); #:: - Claws of Veeshan
			quest::faction(406, -60); #:: - Coldain
            quest::emote("smiles warmly as he hands you your reward.");
            quest::say("You have done well.");
        }
        else {
            quest::say("These are not the pieces I need.");
        }
    }
    #:: Match if faction is worse than Ally
    else {
        quest::say("I do not know you well enough to entrust you with such an item, yet.");
    }

    #:: Return unused items
    plugin::returnUnusedItems();
}

