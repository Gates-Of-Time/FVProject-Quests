sub EVENT_SAY {
    if (($text=~/hail/i) && ($faction < 6)) {
        quest::say("What is it you want, $race?  I have no time to speak with your kind.");
    }
}

sub EVENT_ITEM {
    #:: Match a 25266 - Giant Sack of Supplies.
    if (plugin::takeItems(25266 => 1)) {
        quest::say("Thank you for bringing the supplies, $name. This season has not treated my clan well.  The winds have grown colder and the Coldain are now brazen enough to hunt the same animals we do.  Take this torque back to Svekk and he will repay you for the supplies.");
        #:: Give a 25278 - Velium Torque.
        quest::summonitem(25278);
		#:: Ding!
		quest::ding();
        #:: Set factions
        quest::faction(448, 10);  #:: + Kromzek
        quest::faction(419, 10);  #:: + Kromrif
        quest::faction(406, -30); #:: - Coldain
        quest::faction(430, -30); #:: - Claws of Veeshan
        #:: Grant a tiny amount of experience.
        quest::exp(250);
    }

    #:: Return unused items.
    plugin::returnUnusedItems();
}
