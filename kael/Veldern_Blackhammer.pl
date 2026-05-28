sub EVENT_SAY {
    #:: Match if faction is Ally
    if ($faction == 1) {
        if ($text =~ /hail/i) {
            quest::emote("looks around.");
            #:: Play animation 12 - Being Hit
            quest::doanim(12);
            quest::say("Who dares address me? Oh, it is a $race. Only a shadowknight may address me and proceed further. Are you a shadowknight? Speak, oaf! Otherwise take your prattle elsewhere.");
        }
        elsif ($text =~ /i am a shadowknight/i) {
            quest::say("What is it you want little one? Some armor perhaps? To make a pretty meal? I hate when bits of armor get stuck in my gullet. It is very annoying.");
        }
        elsif ($text =~ /i want some armor/i) {
            quest::emote("laughs deeply at you.");
            #:: Play animation 63 - Laugh
            quest::doanim(63);
            quest::say("You are so transparent, $name. Well, if armor is what you wish, then only the best shall you have for I will not waste my time on nothing less. This is what I will make for you, granted that you can acquire the components for me, a helm, breastplate, armplates, bracers, gauntlets, leggings, and boots.");
        }
        elsif ($text =~ /helm/i) {
            quest::say("For the helm I shall require an ancient tarnished plate helmet and three pieces of crushed coral. Does your tiny mind comprehend the task set before you? If so, then get them immediately! I am beginning to get hungry and you are looking all the better as a snack.");
        }
        elsif ($text =~ /breastplate/i) {
            quest::say("For the breastplate, I require this. An ancient tarnished breastplate and three flawless diamonds. Nothing more, nothing less. For perfection, there is a price, insignificant one.");
        }
        elsif ($text =~ /armplate/i) {
            quest::say("For the armplates, I need these components, an ancient tarnished plate vambraces as well as three flawed emeralds. Now go and fetch them before I change my mind.");
        }
        elsif ($text =~ /bracer/i) {
            quest::say("For the bracers, I will require an ancient tarnished plate bracer and three crushed flame emeralds. Now go away before I use your insides as decoration for my boot.");
        }
        elsif ($text =~ /gauntlet/i) {
            quest::say("Your hands are quite important are they not? For without them, you cannot use your precious weapons or shields to protect yourself. You humor me with your feeble attempts. Fetch me an ancient tarnished plate gauntlets and three crushed pieces of topaz for your precious little hands.");
        }
        elsif ($text =~ /greaves/i) {
            quest::say("Legs... they are my favorite part of any meal. I like to pull them off first and...Oh, yes, where was I? The leggings. Go and retrieve an ancient tarnished plate greave as well as three flawed sea sapphires. Now, leave my sight before I sample one of yours.");
        }
        elsif ($text =~ /boots/i) {
            quest::say("You wish to have a pair of boots? Then acquire these items for me. A pair of ancient tarnished plate boots and three pieces of crushed black marble. I tire of your prattle. Go away now.");
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
        #:: Match three 25831 - Crushed Coral and a 24905 - Ancient Tarnished Plate Helmet
        if (plugin::takeItems(25831 => 3, 24905 => 1)) {
            #:: Give a 25349 - Malevolent Crown
            quest::summonitem(25349);
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
        #:: Match three 25814 - Flawless Diamond and a 24900 - Ancient Tarnished Breastplate
        elsif (plugin::takeItems(25814 => 3, 24900 => 1)) {
            #:: Give a 25350 - Malevolent Breastplate
            quest::summonitem(25350);
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
        #:: Match three 25821 - Flawed Emerald and a 24902 - Ancient Tarnished Vambraces
        elsif (plugin::takeItems(25821 => 3, 24902 => 1)) {
            #:: Give a 25351 - Malevolent Vambraces
            quest::summonitem(25351);
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
        #:: Match three 25838 - Crushed Flame Emerald and a 24904 - Ancient Tarnished Plate Bracelet
        elsif (plugin::takeItems(25838 => 3, 24904 => 1)) {
            #:: Give a 25352 - Malevolent Bracer
            quest::summonitem(25352);
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
        #:: Match three 25832 - Crushed Topaz and a 24906 - Ancient Tarnished Plate Gauntlets
        elsif (plugin::takeItems(25832 => 3, 24906 => 1)) {
            #:: Give a 25353 - Malevolent Gauntlets
            quest::summonitem(25353);
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
        #:: Match three 25825 - Flawed Sea Sapphire and a 24901 - Ancient Tarnished Greaves
        elsif (plugin::takeItems(25825 => 3, 24901 => 1)) {
            #:: Give a 25354 - Malevolent Greaves
            quest::summonitem(25354);
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
        #:: Match three 25833 - Crushed Black Marble and a 24903 - Ancient Tarnished Plate Boots
        elsif (plugin::takeItems(25833 => 3, 24903 => 1)) {
            #:: Give a 25355 - Malevolent Boots
            quest::summonitem(25355);
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
