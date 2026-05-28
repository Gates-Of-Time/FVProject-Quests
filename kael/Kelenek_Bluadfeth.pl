sub EVENT_SAY {
    #:: Match if faction is Ally
    if ($faction == 1) {
        if ($text =~ /hail/i) {
            quest::say("What do we have here? A cutthroat, perhaps? If not then go away, for I have words to speak with a rogue.");
        }
        elsif ($text =~ /i am a rogue/i) {
            quest::say("I commend you on your skill, making it this far. I have a job for you, thief. Several in fact and quite simple for an assassin such as yourself. I am in need of certain components and will reward you well if they are brought to me. Do I have your services?");
        }
        elsif ($text =~ /you have my services/i) {
            quest::say("Excellent. Now, down to business. I shall pay you in trade for the items I seek. What I have for you is as such, a coif, a breastplate, armplates, bracers, gauntlets, greaves and boots. These should aid you in your skullduggery.");
        }
        elsif ($text =~ /coif/i) {
            quest::say("I am need of an ancient tarnished chain coif and three crushed pieces of coral. For your services I shall give you a coif suitable for one such as you.");
        }
        elsif ($text =~ /breastplate/i) {
            quest::say("For the breastplate you must seek out an ancient tarnished chain tunic and three flawless diamonds. Only then will you receive a breastplate of my crafting.");
        }
        elsif ($text =~ /armplate/i) {
            quest::say("For the armplates I shall give you, I require this; an ancient tarnished chain sleeves and three flawed emeralds.");
        }
        elsif ($text =~ /bracer/i) {
            quest::say("An ancient tarnished bracer and three crushed flame emeralds is what I require of you. A bracer of my making is your reward.");
        }
        elsif ($text =~ /gauntlets/i) {
            quest::say("I need an ancient tarnished chain gauntlets as well as three crushed topaz. Once I have these you shall have your reward.");
        }
        elsif ($text =~ /greaves/i) {
            quest::say("A pair of leggings will be your once you completed this task for me, thief. Bring unto me a pair of ancient tarnished chain leggings and a trilogy of flawed sea sapphires.");
        }
        elsif ($text =~ /boots/i) {
            quest::say("A fine pair of boots shall you have to skulk around in, once I have a pair of an ancient tarnished chain boots and three pieces of crushed black marble.");
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
        #:: Match a 25831 - Crushed Coral and a 24912 - Ancient Tarnished Chain Coif
        if (plugin::takeItems(25831 => 3, 24912 => 1)) {
            #:: Give a 25377 - Deceiver's Crown
            quest::summonitem(25377);
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
        #:: Match a 25814 - Flawless Diamond and a 24907 - Ancient Tarnished Chain Tunic
        elsif (plugin::takeItems(25814 => 3, 24907 => 1)) {
            #:: Give a 25378 - Deceiver's Chestguard
            quest::summonitem(25378);
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
        #:: Match a 25821 - Flawed Emerald and a 24909 - Ancient Tarnished Chain Sleeves
        elsif (plugin::takeItems(25821 => 3, 24909 => 1)) {
            #:: Give a 25379 - Deceiver's Vambraces
            quest::summonitem(25379);
            #:: Grant a large amount of experience
            quest::exp(150000);
            #:: Set factions
			quest::faction(429, 20);  #:: + King Tormax
			quest::faction(448, 20);  #:: + Kromzek
			quest::faction(430, -20); #:: - Claws of Veeshan
			quest::faction(406, -60); #:: - Coldain
            quest::emote("smiles warmly as she hands you your reward.");
            quest::say("You have done well.");
        }
        #:: Match a 25838 - Crushed Flame Emerald and a 24911 - Ancient Tarnished Chain Bracer
        elsif (plugin::takeItems(25838 => 3, 24911 => 1)) {
            #:: Give a 25380 - Deceiver's Bracer
            quest::summonitem(25380);
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
        #:: Match a 25832 - Crushed Topaz and a 24913 - Ancient Tarnished Chain Gauntlets
        elsif (plugin::takeItems(25832 => 3, 24913 => 1)) {
            #:: Give a 25381 - Deceiver's Gauntlets
            quest::summonitem(25381);
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
        #:: Match a 25825 - Flawed Sea Sapphire and a 24908 - Ancient Tarnished Chain Leggings
        elsif (plugin::takeItems(25825 => 3, 24908 => 1)) {
            #:: Give a 25382 - Deceiver's Greaves
            quest::summonitem(25382);
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
        #:: Match a 25833 - Crushed Black Marble and a 24910 - Ancient Tarnished Chain Boots
        elsif (plugin::takeItems(25833 => 3, 24910 => 1)) {
            #:: Give a 25383 - Deceiver's Boots
            quest::summonitem(25383);
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

