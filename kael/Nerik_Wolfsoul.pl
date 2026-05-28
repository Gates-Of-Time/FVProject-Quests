sub EVENT_SAY {
    #:: Match if faction is Ally
    if ($faction == 1) {
        if ($text =~ /hail/i) {
            quest::say("Greetings to you. I seek one who is known as a beastlord. What do you call yourself, $name?");
        }
        elsif ($text =~ /i am a beastlord/i) {
            quest::say("Then perhaps you would be interested in some armor that I can make you. I can make you a cap, tunic, leggings, bracer, boots, sleeves, and gloves if you bring me the correct items.");
        }
        elsif ($text =~ /cap/i) {
            quest::say("I shall weave one of exceptional quality for you but you must gather the items first. I require an ancient leather cap and a set of three pieces of crushed coral.");
        }
        elsif ($text =~ /tunic/i) {
            quest::say("You shall be an imposing force with this tunic. Solid as the unmoving mountains, it shall protect you. Once I have gained an ancient leather tunic and three flawless diamonds, the item is yours.");
        }
        elsif ($text =~ /sleeves/i) {
            quest::say("As the mighty stone that parts the flow of water, so shall these sleeves divert harm against you. Bring me three flawed emeralds and a pair of ancient leather sleeves.");
        }
        elsif ($text =~ /bracer/i) {
            quest::say("For a bracer I shall require an ancient leather bracelet and a set of three crushed flame emeralds. Do this and the reward shall be yours to keep.");
        }
        elsif ($text =~ /gloves/i) {
            quest::say("Your hands are like the wind, everflowing and moving. Subtle one moment, then a howling wind raining blow upon blow to your foes. These gloves shall aid you. In order to complete them I require a pair of ancient leather gloves and three crushed topaz.");
        }
        elsif ($text =~ /leggings/i) {
            quest::say("The leggings shall protect you, as the valley shelters the still pool within its center from the howling winds. Furnish a pair of ancient leather leggings and a set of three flawed sea sapphires for me and they are yours.");
        }
        elsif ($text =~ /boots/i) {
            quest::say("Your feet are hard as any stone and as swift as a coiled serpent but even the swiftest feet require protection so I shall provide you with these. They should help. Acquire a pair of ancient tarnished boots and three crushed pieces of black marble.");
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
        #:: Match three 25831 - Crushed Coral and a 24919 - Ancient Leather Cap
        if (plugin::takeItems(25831 => 3, 24919 => 1)) {
            #:: Give a 5439 - Crown of Beast Mastery
            quest::summonitem(5439);
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
        #:: Match three 25814 - Flawless Diamond and a 24914 - Ancient Leather Tunic
        elsif (plugin::takeItems(25814 => 3, 24914 => 1)) {
            #:: Give a 5440 - Chestguard of Beast Mastery
            quest::summonitem(5440);
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
        #:: Match three 25821 - Flawed Emerald and a 24916 - Ancient Leather Sleeves
        elsif (plugin::takeItems(25821 => 3, 24916 => 1)) {
            #:: Give a 5441 - Armband of Beast Mastery
            quest::summonitem(5441);
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
        #:: Match three 25838 - Crushed Flame Emerald and a 24918 - Ancient Leather Bracelet
        elsif (plugin::takeItems(25838 => 3, 24918 => 1)) {
            #:: Give a 5442 - Bracer of Beast Mastery
            quest::summonitem(5442);
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
        #:: Match three 25832 - Crushed Topaz and a 24920 - Ancient Leather Gloves
        elsif (plugin::takeItems(25832 => 3, 24920 => 1)) {
            #:: Give a 5443 - Gloves of Beast Mastery
            quest::summonitem(5443);
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
        #:: Match three 25825 - Flawed Sea Sapphire and a 24915 - Ancient Leather Leggings
        elsif (plugin::takeItems(25825 => 3, 24915 => 1)) {
            #:: Give a 5444 - Leggings of Beast Mastery
            quest::summonitem(5444);
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
        #:: Match three 25833 - Crushed Black Marble and a 24917 - Ancient Leather Boots
        elsif (plugin::takeItems(25833 => 3, 24917 => 1)) {
            #:: Give a 5445 - Boots of Beast Mastery
            quest::summonitem(5445);
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
