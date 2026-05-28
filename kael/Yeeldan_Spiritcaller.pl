sub EVENT_SAY {
    #:: Match if faction is Ally
    if ($faction == 1) {
        if ($text =~ /hail/i) {
            quest::emote("speaks in a rumbling tone.");
            quest::say("Greetings. I only wish to speak to a shaman. Are you what I seek?");
        }
        elsif ($text =~ /i am a shaman/i) {
            quest::say("I sense the spirit of your totem within you and it is strong with power. You have learned much from your travels and I shall help you, by providing you with protection from harm and the elements, in the form of armor");
        }
        elsif ($text =~ /armor/i) {
            quest::say("For you I shall make a coif, breastplate, sleeves, bracers, gauntlets, leggings, and boots. Each piece is a quest unto itself. To seek the components, you must search the lands for them and test the power of the spirit within.");
        }
        elsif ($text =~ /coif/i) {
            quest::say("The coif I shall make will be comprised of an ancient tarnished coif and three crushed onyx sapphires. I shall be waiting.");
        }
        elsif ($text =~ /breastplate/i) {
            quest::say("A breastplate to protect the spirit within. I shall make one for you granted that you retrieve the components I shall need. An ancient tarnished chain tunic and three pieces of black marble. I await your return.");
        }
        elsif ($text =~ /sleeves/i) {
            quest::say("Sleeves I shall make upon receipt of three jaundice gems and an ancient tarnished chain sleeve. Complete this simple task and they are yours.");
        }
        elsif ($text =~ /bracer/i) {
            quest::say("A bracer of mystic power I shall grant you. All I require is the acquisition of an ancient tarnished chain bracer and three crushed opal.");
        }
        elsif ($text =~ /gauntlets/i) {
            quest::say("I shall require an ancient tarnished pair of chain gauntlets and three crushed lava rubys to complete my ritual.");
        }
        elsif ($text =~ /leggings/i) {
            quest::say("You seek leggings? Then provide for me, three chipped onyx and a pair of ancient tarnished chain leggings. I will give these to you for your service.");
        }
        elsif ($text =~ /boots/i) {
            quest::say("These boots will help you in your battles to come. I shall grant them upon receipt of three crushed flame emeralds and a pair of an ancient tarnished chain boots.");
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
        #:: Match three 25841 - Crushed Onyx Sapphire and a 24912 - Ancient Tarnished Chain Coif
        if (plugin::takeItems(25841 => 3, 24912 => 1)) {
            #:: Give a 25356 - Spirit Caller's Helm
            quest::summonitem(25356);
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
        #:: Match three 25805 - Black Marble and a 24907 - Ancient Tarnished Chain Tunic
        elsif (plugin::takeItems(25805 => 3, 24907 => 1)) {
            #:: Give a 25357 - Spirit Caller's Breastplate
            quest::summonitem(25357);
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
        #:: Match three 25815 - Jaundice Gem and a 24909 - Ancient Tarnished Chain Sleeves
        elsif (plugin::takeItems(25815 => 3, 24909 => 1)) {
            #:: Give a 25358 - Spirit Caller's Vambraces
            quest::summonitem(25358);
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
        #:: Match three 25836 - Crushed Opal and a 24911 - Ancient Tarnished Chain Bracer
        elsif (plugin::takeItems(25836 => 3, 24911 => 1)) {
            #:: Give a 25359 - Spirit Caller's Bracer
            quest::summonitem(25359);
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
        #:: Match three 25840 - Crushed Lava Ruby and a 24913 - Ancient Tarnished Chain Gauntlets
        elsif (plugin::takeItems(25840 => 3, 24913 => 1)) {
            #:: Give a 25360 - Spirit Caller's Gauntlets
            quest::summonitem(25360);
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
        #:: Match three 25827 - Chipped Onyx Sapphire and a 24908 - Ancient Tarnished Chain Leggings
        elsif (plugin::takeItems(25827 => 3, 24908 => 1)) {
            #:: Give a 25361 - Spirit Caller's Greaves
            quest::summonitem(25361);
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
        #:: Match three 25838 - Crushed Flame Emerald and a 24910 - Ancient Tarnished Chain Boots
        elsif (plugin::takeItems(25838 => 3, 24910 => 1)) {
            #:: Give a 25362 - Spirit Caller's Boots
            quest::summonitem(25362);
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
