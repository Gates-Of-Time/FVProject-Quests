sub EVENT_SAY {
    #:: Match if faction is better than Apprehensive
    if ($faction < 6) {
        if ($text =~ /missing helmet/i) {
            quest::say("Recently helmets have been stolen from our workers.  One of them reported seeing one of those wreched flying monkey beasts carry one off.  Having those helmets back would be very useful.  If you come across any of the workers helmets, return them to me and I will bestow a reward totem upon you.");
        }
    }
}

sub EVENT_ITEM {
    #:: Match a 25266 - Giant Sack of Supplies
    if (plugin::takeItems(25266 => 1)) {
        quest::say("It's about time the supplies got here.  Not like it's a long trip from the center of Kael to us out here.  Payment?  I already paid Wenglawks for the supplies I ordered.  Don't give me any trouble, little one.  I have enough trouble with the missing helmets.");
        #:: Ding!
        quest::ding();
        #:: Set factions
        quest::faction(448, 10);  #:: + Kromzek
        quest::faction(419, 10);  #:: + Kromrif
        quest::faction(406, -30);  #:: - Coldain
        quest::faction(430, -30); #:: - Claws of Veeshan
        #:: Grant a tiny amount of experience
        quest::exp(250);
    }

    #:: Return unused items
    plugin::returnUnusedItems();
}
