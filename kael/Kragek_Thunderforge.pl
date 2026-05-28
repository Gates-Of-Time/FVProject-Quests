sub EVENT_SAY {
    #:: Match if faction is Ally
    if ($faction == 1) {
        if ($text =~ /hail/i) {
            quest::say("Greetings to you. I seek the service of a powerful warrior. Are you a warrior? If not then be gone.");
        }
        elsif ($text =~ /i am a warrior/i) {
            quest::say("Excellent. I see that you are a seasoned veteran of many battles. I admire your strength and ferocity. Life is but a series of battles, is it not?");
        }
        elsif ($text =~ /life is a series of battles/i) {
            quest::say("We share the same view then. I wish to test your skills in battle. Not with me of course, for I will destroy you where you stand. Instead I wish for you to retrieve some trinkets for me and once I have them I will reward you handsomely with a helm, a breastplate, armplates, bracers, gauntlets, greaves, or boots.");
        }
        elsif ($text =~ /helm/i) {
            quest::say("All I require are an ancient tarnished plate helmet and three crushed coral pieces. This should be a small task for one such as you. Go now and I shall await your return.");
        }
        elsif ($text =~ /breastplate/i) {
            quest::say("As the resolve of your discipline and strength shall endure through a battle, so shall this breastplate. All that is required are an ancient tarnished breastplate, and three flawless diamonds. Do this quickly so that you may return to the field of battle.");
        }
        elsif ($text =~ /armplate/i) {
            quest::say("So, a pair of armplates, is what you require? Well, I require ancient tarnished plate vambraces, and three flawed emeralds before you may receive it. May your deeds be spread throughout the lands!");
        }
        elsif ($text =~ /bracer/i) {
            quest::say("Bracers for the mighty? Retrieve these components and I shall forge the item for you. Bring me ancient tarnished plate bracers and three crushed flame emeralds.");
        }
        elsif ($text =~ /gauntlet/i) {
            quest::say("Mighty gauntlets to aid in obliterating your foes, eh? It is no easy task but I shall require a pair of ancient tarnished plate gauntlets and three crushed topazes. Hurry along, $race.");
        }
        elsif ($text =~ /greaves/i) {
            quest::say("Strength and balance are important, are they not? I shall help give you an advantage with these greaves. Gather three flawed sea sapphires and ancient tarnished plate greaves.");
        }
        elsif ($text =~ /boots/i) {
            quest::say("A pair of boots you shall have once you have acquired a pair of ancient tarnished plate boots and three crushed black marbles.");
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
            #:: Give a 25433 - Warlord's Crown
            quest::summonitem(25433);
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
            #:: Give a 25434 - Warlord's Breastplate
            quest::summonitem(25434);
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
            #:: Give a 25435 - Warlord's Vambraces
            quest::summonitem(25435);
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
            #:: Give a 25436 - Warlord's Bracer
            quest::summonitem(25436);
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
            #:: Give a 25437 - Warlord's Gauntlets
            quest::summonitem(25437);
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
            #:: Give a 25438 - Warlord's Greaves
            quest::summonitem(25438);
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
            #:: Give a 25439 - Warlord's Boots
            quest::summonitem(25439);
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
