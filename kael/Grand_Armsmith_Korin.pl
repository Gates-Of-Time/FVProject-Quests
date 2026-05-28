sub EVENT_SAY {
    #:: Match if faction is Kindly or better
    if ($faction <= 3) {
        if ($text =~ /hail/i) {
            quest::say("What do you want from me $race? I can only imagine that you are here to ask me to use my obviously superior smithing talents to create some [special helmets] to help protect your obviously frail body.");
        }
        elsif ($text =~ /special helmets/i) {
            quest::say("Just as I suspected $race. Using my superior skills I can customize a plate helmet to help better protect you. Give me your Malevolent Crown, Warlord's Crown, Shining Helm, Templar's Crown, Troubadour's Helm, Frostreaver's Velium Crown, Crown of the Kromzek Kings or a Cowl of Mortality and I shall make you a new helm that will better protect you.");
        }
    }
    #:: Match if faction is worse than Kindly
    else {
        quest::say("You must prove your dedication to Kael Drakkal and the Kromzek clan before I will speak to you $race now begone!");
    }
}

sub EVENT_ITEM {
    #:: Match if faction is Kindly or better
    if ($faction <= 3) {
        #:: Match a 25349 - Malevolent Crown
        if (plugin::takeItems(25349 => 1)) {
            quest::say("Here you are $race just as I promised. May it guard you well.");
            #:: Give a 31520 - Custom Malevolent Crown
            quest::summonitem(31520);
        }
        #:: Match a 25433 - Warlord's Crown
        elsif (plugin::takeItems(25433 => 1)) {
            quest::say("Here you are $race just as I promised. May it guard you well.");
            #:: Give a 31524 - Custom Warlord's Crown
            quest::summonitem(31524);
        }
        #:: Match a 25370 - Shining Helm
        elsif (plugin::takeItems(25370 => 1)) {
            quest::say("Here you are $race just as I promised. May it guard you well.");
            #:: Give a 31521 - Custom Shining Helm
            quest::summonitem(31521);
        }
        #:: Match a 25391 - Templar's Crown
        elsif (plugin::takeItems(25391 => 1)) {
            quest::say("Here you are $race just as I promised. May it guard you well.");
            #:: Give a 31523 - Custom Templar's Crown
            quest::summonitem(31523);
        }
        #:: Match a 25384 - Troubadour's Helm
        elsif (plugin::takeItems(25384 => 1)) {
            quest::say("Here you are $race just as I promised. May it guard you well.");
            #:: Give a 31522 - Custom Troubadour's Helm
            quest::summonitem(31522);
        }
        #:: Match a 30507 - Frostreaver's Velium Crown
        elsif (plugin::takeItems(30507 => 1)) {
            quest::say("Here you are $race just as I promised. May it guard you well.");
            #:: Give a 2610 - Custom Frostreaver's Velium Crown
            quest::summonitem(2610);
        }
        #:: Match a 25194 - Crown of the Kromzek Kings
        elsif (plugin::takeItems(25194 => 1)) {
            quest::say("Here you are $race just as I promised. May it guard you well.");
            #:: Give a 2611 - Custom Crown of the Kromzek Kings
            quest::summonitem(2611);
        }
        #:: Match a 26025 - Cowl of Mortality
        elsif (plugin::takeItems(26025 => 1)) {
            quest::say("Here you are $race just as I promised. May it guard you well.");
            #:: Give a 2612 - Custom Cowl of Mortality
            quest::summonitem(2612);
        }
        else {
            quest::say("These are not the item I asked for $race do not waste my time!");
        }
    }
    #:: Match if faction is worse than Kindly
    else {
        quest::say("I do not know you well enough to entrust you with such an item yet, now leave my sight $race.");
    }

    #:: Return unused items
    plugin::returnUnusedItems();
}
