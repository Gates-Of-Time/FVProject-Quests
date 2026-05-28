sub EVENT_SAY {
    #:: Match if faction is Ally
    if ($faction == 1) {
        if ($text =~ /hail/i) {
            quest::emote("bows.");
            #:: Play animation 24 - Cheer
            quest::doanim(24);
            quest::say("Greetings to you. You are far away from your homelands, stranger. I am looking for someone. Someone that the outlanders call a cleric. Are you a cleric?");
        }
        elsif ($text =~ /i am a cleric/i) {
            quest::say("Ahhh... most pious one. I sense the aura of your devotion and conviction and it is strong about you. A shame you are so short lived, mortal. But I see potential in you and for that I shall aid you in your calling. Do you wish my aid?");
        }
        elsif ($text =~ /i wish your aid/i) {
            quest::say("Then I have a set of goals for you. Once you have achieved them, you shall be rewarded with such as these; a helm, a breastplate, armplates, bracers, gauntlets, greaves and boots. May they protect you from your enemies.");
        }
        elsif ($text =~ /helm/i) {
            quest::say("I shall craft a helm for you but you must seek these items out for me first. I have need of an ancient tarnished plate helmet and three crushed onyx sapphires.");
        }
        elsif ($text =~ /breastplate/i) {
            quest::say("Such as your faith protects you so shall this breastplate. I must have an ancient tarnished breastplate and three pieces of black marble.");
        }
        elsif ($text =~ /armplate/i) {
            quest::say("For the armplates, I shall require a pair of an ancient tarnished plate armplates as well as three jaundice gems. Go forth and seek these out.");
        }
        elsif ($text =~ /bracer/i) {
            quest::say("For the bracers, faithful one, I shall require the acquisition of an ancient tarnished plate bracer and three crushed opals.");
        }
        elsif ($text =~ /gauntlet/i) {
            quest::say("I will need a pair of a ancient tarnished gauntlets three crushed lava rubys, so that I may make your reward.");
        }
        elsif ($text =~ /greaves/i) {
            quest::say("You shall acquire a pair of an ancient tarnished plate greaves and three chipped onyx sapphires for me. I await your return.");
        }
        elsif ($text =~ /boots/i) {
            quest::say("With your aid I shall make a pair of fine boots for you. All that is needed is a pair of an ancient tarnished plate boots and a trilogy of crushed flame emeralds.");
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
        #:: Match three 25841 - Crushed Onyx Sapphire and a 24905 - Ancient Tarnished Plate Helmet
        if (plugin::takeItems(25841 => 3, 24905 => 1)) {
            #:: Give a 25391 - Templar's Crown
            quest::summonitem(25391);
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
        #:: Match three 25805 - Black Marble and a 24900 - Ancient Tarnished Breastplate
        elsif (plugin::takeItems(25805 => 3, 24900 => 1)) {
            #:: Give a 25392 - Templar's Chestplate
            quest::summonitem(25392);
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
        #:: Match three 25815 - Jaundice Gem and a 24902 - Ancient Tarnished Vambraces
        elsif (plugin::takeItems(25815 => 3, 24902 => 1)) {
            #:: Give a 25393 - Templar's Vambraces
            quest::summonitem(25393);
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
        #:: Match three 25836 - Crushed Opal and a 24904 - Ancient Tarnished Plate Bracelet
        elsif (plugin::takeItems(25836 => 3, 24904 => 1)) {
            #:: Give a 25394 - Templar's Bracer
            quest::summonitem(25394);
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
        #:: Match three 25840 - Crushed Lava Ruby and a 24906 - Ancient Tarnished Plate Gauntlets
        elsif (plugin::takeItems(25840 => 3, 24906 => 1)) {
            #:: Give a 25395 - Templar's Gauntlets
            quest::summonitem(25395);
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
        #:: Match three 25827 - Chipped Onyx Sapphire and a 24901 - Ancient Tarnished Greaves
        elsif (plugin::takeItems(25827 => 3, 24901 => 1)) {
            #:: Give a 25396 - Templar's Leggings
            quest::summonitem(25396);
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
        #:: Match three 25838 - Crushed Flame Emerald and a 24903 - Ancient Tarnished Plate Boots
        elsif (plugin::takeItems(25838 => 3, 24903 => 1)) {
            #:: Give a 25397 - Templar's Boots
            quest::summonitem(25397);
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
