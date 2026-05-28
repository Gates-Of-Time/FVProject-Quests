sub EVENT_SAY {
    #:: Match if faction is Ally
    if ($faction == 1) {
        if ($text =~ /hail/i) {
            quest::say("Greetings to you. I seek one that calls himself a wizard. What do you call yourself, manling?");
        }
        elsif ($text =~ /i am a wizard/i) {
            quest::say("Excellent. Are you sure enough of your skills to undertake my tasks? If not, get out of my sight, weakling!");
        }
        elsif ($text =~ /undertake your tasks/i) {
            quest::say("I thought so. One should never back down from a challenge. Once you have completed them I will have a cap, a robe, sleeves, wristbands, gloves, leggings and boots to reward you with.");
        }
        elsif ($text =~ /cap/i) {
            quest::say("For you to receive my gift, I shall require an ancient silk turban and three crushed flame opals.");
        }
        elsif ($text =~ /robe/i) {
            quest::say("This exquisite robe shall be yours in exchange for an ancient silk robe and three pristine emeralds.");
        }
        elsif ($text =~ /sleeves/i) {
            quest::say("For these durable sleeves, you must fetch me a pair of ancient silk sleeves and three flawed topazes.");
        }
        elsif ($text =~ /wristband/i) {
            quest::say("The crafting of this wristband requires that you bring me an ancient silk wristband and three crushed onyx sapphire pieces.");
        }
        elsif ($text =~ /gloves/i) {
            quest::say("For this fine pair of gloves you must seek out and return to me three crushed topazes and a pair of ancient silk gloves.");
        }
        elsif ($text =~ /leggings/i) {
            quest::say("This pair of leggings will yours provided you supply me with a pair of ancient silk pantaloons as well as three nephrites.");
        }
        elsif ($text =~ /boots/i) {
            quest::say("These supple boots shall be yours upon receipt of a pair of ancient silk boots and a trilogy of crushed jaundice gems.");
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
        #:: Match three 25837 - Crushed Flame Opal and a 24926 - Ancient Silk Turban
        if (plugin::takeItems(25837 => 3, 24926 => 1)) {
            #:: Give a 25405 - Circlet of the Invoker
            quest::summonitem(25405);
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
        #:: Match three 25807 - Pristine Emerald and a 24921 - Ancient Silk Robe
        elsif (plugin::takeItems(25807 => 3, 24921 => 1)) {
            #:: Give a 25406 - Robe of the Invoker
            quest::summonitem(25406);
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
        #:: Match three 25818 - Flawed Topaz and a 24923 - Ancient Silk Sleeves
        elsif (plugin::takeItems(25818 => 3, 24923 => 1)) {
            #:: Give a 25407 - Sleeves of the Invoker
            quest::summonitem(25407);
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
        #:: Match three 25841 - Crushed Onyx Sapphire and a 24925 - Ancient Silk Wristband
        elsif (plugin::takeItems(25841 => 3, 24925 => 1)) {
            #:: Give a 25408 - Bangle of the Invoker
            quest::summonitem(25408);
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
        #:: Match three 25832 - Crushed Topaz and a 24927 - Ancient Silk Gloves
        elsif (plugin::takeItems(25832 => 3, 24927 => 1)) {
            #:: Give a 25409 - Gloves of the Invoker
            quest::summonitem(25409);
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
        #:: Match three 25816 - Nephrite and a 24922 - Ancient Silk Pantaloons
        elsif (plugin::takeItems(25816 => 3, 24922 => 1)) {
            #:: Give a 25410 - Pants of the Invoker
            quest::summonitem(25410);
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
        #:: Match three 25829 - Crushed Jaundice Gem and a 24924 - Ancient Silk Boots
        elsif (plugin::takeItems(25829 => 3, 24924 => 1)) {
            #:: Give a 25411 - Boots of the Invoker
            quest::summonitem(25411);
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
