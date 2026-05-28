sub EVENT_SAY {
    #:: Match if faction is Ally
    if ($faction == 1) {
        if ($text =~ /hail/i) {
            quest::say("Greetings to you. I seek one who is a protector of nature. A ranger is what you call them I believe. Are you a ranger?");
        }
        elsif ($text =~ /i am a ranger/i) {
            quest::say("I have not seen your kind in quite some time. Do you seek aid in your never-ending fight against those who do nature harm? There is no need to answer for I see within your eyes, the commitment and the conviction. None the less, the tasks I set before you shall be none the easier. Are you ready to submit to my will?");
        }
        elsif ($text =~ /ready to submit to your will/i) {
            quest::say("That is good for there is nothing like the wrath of nature, woodlands warrior. And Natures wrath shall you be, with this armor to protect you in your struggle. I shall forge a coif, breastplate, sleeves, bracers, gauntlets, leggings, and boots for you.");
        }
        elsif ($text =~ /coif/i) {
            quest::say("This coif shall protect you from battle and the elements. What I require of you is this. Three crushed coral pieces and a ancient tarnished chain coif.");
        }
        elsif ($text =~ /breastplate/i) {
            quest::say("Even as the hardiest tree in the forest requires protection, so shall this breastplate protect you. Bring these components for me, an ancient tarnished chain tunic as well as three flawless diamonds.");
        }
        elsif ($text =~ /sleeves/i) {
            quest::say("I require an ancient tarnished chain sleeves and three flawed emeralds. Do this so that I may grant you these special sleeves as a gift for your diligence.");
        }
        elsif ($text =~ /bracer/i) {
            quest::say("This shall help shield your forearms from any stray blows. Bring me an ancient tarnished chain wristguard and a trilogy of crushed flame emeralds.");
        }
        elsif ($text =~ /gauntlets/i) {
            quest::say("Bring me these items, for I will not grant you your pair until then. A pair of ancient tarnished chain gauntlets as well as three crushed topaz.");
        }
        elsif ($text =~ /leggings/i) {
            quest::say("A pair of leggings you seek? I seek something as well. Bring me a pair of an ancient tarnished chain leggings and three flawed sea sapphires. Go now. The struggle continues as we speak.");
        }
        elsif ($text =~ /boots/i) {
            quest::say("For the boots, I shall require a pair of an ancient tarnished chain boots and three crushed pieces of black marble.");
        }
    }
    #:: Match if faction is worse than Ally
    elsif ($faction > 1) {
        quest::say("You must prove your dedication to Kael Drakkal and the Kromzek clan before I will speak to you.");
    }
}

sub EVENT_ITEM {
    #:: Match if faction is Ally
    if ($faction == 1) {
        #:: Match a 25831 - Crushed Coral and a 24912 - Ancient Tarnished Chain Coif
        if (plugin::takeItems(25831 => 3, 24912 => 1)) {
            #:: Give a 25363 - Forest Stalker's Coif
            quest::summonitem(25363);
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
            #:: Give a 25364 - Forest Stalker's Breastplate
            quest::summonitem(25364);
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
            #:: Give a 25365 - Forest Stalker's Vambraces
            quest::summonitem(25365);
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
            #:: Give a 25366 - Forest Stalker's Bracer
            quest::summonitem(25366);
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
            #:: Give a 25367 - Forest Stalker's Gauntlets
            quest::summonitem(25367);
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
            #:: Give a 25368 - Forest Stalker's Greaves
            quest::summonitem(25368);
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
            #:: Give a 25369 - Forest Stalker's Boots
            quest::summonitem(25369);
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
    elsif ($faction > 1) {
        quest::say("I do not know you well enough to entrust you with such an item, yet.");
    }

    #:: Return unused items
    plugin::returnUnusedItems();
}
