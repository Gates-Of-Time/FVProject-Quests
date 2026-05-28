sub EVENT_SAY {
    if ($text =~ /hail/i) {
        quest::say("Hmmm, I didn't know refuse could speak. Are you here to annoy me or are you planning on making yourself useful, if the latter is even possible?");
    }
    elsif ($text =~ /make myself useful/i) {
        quest::say("A feeble creature like yourself is near worthless. If you must insist on serving the mighty Kromzek then go to the caverns of the geonids and bring me four blocks of living granite so that I may perform some tests on its value as a resource in the expansion of Kael.");
    }
}

sub EVENT_ITEM {
    #:: Match four 24872 - Block of Living Granite
    if (plugin::takeItems(24872 => 4)) {
        quest::say("So you proved to be of value after all, take this for your work. Don't let it go to your head.");
        #:: Grant a medium amount of experience
        quest::exp(25000);
        #:: Give a 24877 - Gigantic Kromzek Pick
        quest::summonitem(24877);
        #:: Set factions
        quest::faction(448, 10);  #:: + Kromzek
        quest::faction(419, 10);  #:: + Kromrif
        quest::faction(429, 10);  #:: + King Tormax
        quest::faction(430, -10); #:: - Claws of Veeshan
    }

    #:: Return unused items
    plugin::returnUnusedItems();
}
