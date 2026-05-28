sub EVENT_SAY {
    #:: Match if faction is Ally
    if ($faction == 1) {
        if ($text =~ /hail/i) {
            quest::say("Do I see an inner rage there in your eyes? Are you a berserker then?");
        }
        elsif ($text =~ /i am a berserker/i) {
            quest::say("I will be able to craft armor for you.");
        }
        elsif ($text =~ /armor/i) {
            quest::say("What I have for you is as such, a coif, a breastplate, armplates, bracers, gauntlets, greaves and boots.");
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
            quest::say("Bring unto me a pair of ancient tarnished chain leggings and a trilogy of flawed sea sapphires.");
        }
        elsif ($text =~ /boots/i) {
            quest::say("A fine pair of boots shall you have, once I have a pair of an ancient tarnished chain boots and three pieces of crushed black marble.");
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
        #:: Match three 25831 - Crushed Coral and a 24912 - Ancient Tarnished Chain Coif
        if (plugin::takeItems(25831 => 3, 24912 => 1)) {
            #:: Give a 55310 - Firebrand's Coif
            quest::summonitem(55310);
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
        #:: Match three 25814 - Flawless Diamond and a 24907 - Ancient Tarnished Chain Tunic
        elsif (plugin::takeItems(25814 => 3, 24907 => 1)) {
            #:: Give a 55311 - Firebrand's Tunic
            quest::summonitem(55311);
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
        #:: Match three 25821 - Flawed Emerald and a 24909 - Ancient Tarnished Chain Sleeves
        elsif (plugin::takeItems(25821 => 3, 24909 => 1)) {
            #:: Give a 55312 - Firebrand's Sleeves
            quest::summonitem(55312);
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
        #:: Match three 25838 - Crushed Flame Emerald and a 24911 - Ancient Tarnished Chain Bracer
        elsif (plugin::takeItems(25838 => 3, 24911 => 1)) {
            #:: Give a 55313 - Firebrand's Bracer
            quest::summonitem(55313);
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
        #:: Match three 25832 - Crushed Topaz and a 24913 - Ancient Tarnished Chain Gauntlets
        elsif (plugin::takeItems(25832 => 3, 24913 => 1)) {
            #:: Give a 55314 - Firebrand's Gauntlets
            quest::summonitem(55314);
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
        #:: Match three 25825 - Flawed Sea Sapphire and a 24908 - Ancient Tarnished Chain Leggings
        elsif (plugin::takeItems(25825 => 3, 24908 => 1)) {
            #:: Give a 55315 - Firebrand's Leggings
            quest::summonitem(55315);
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
        #:: Match three 25833 - Crushed Black Marble and a 24910 - Ancient Tarnished Chain Boots
        elsif (plugin::takeItems(25833 => 3, 24910 => 1)) {
            #:: Give a 55316 - Firebrand's Boots
            quest::summonitem(55316);
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
