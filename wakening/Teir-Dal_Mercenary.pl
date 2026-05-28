sub EVENT_ITEM {
    #:: Match a 1724 - Field Supplies
    if (plugin::takeItems(1724 => 1)) {
        quest::say("Ahh, thank you, $name. I've been waiting for these supplies for ages.");
        #:: Set factions
        quest::faction(430, -30); #:: - Claws of Veeshan
        quest::faction(419, 10);  #:: + Kromrif
        quest::faction(448, 10);  #:: + Kromzek
		#:: Give exactly 5 copper, 5 silver, 2 gold, and 1 platinum coins
        quest::givecash(5, 5, 2, 1);
    }

    #:: Return unused items
    plugin::returnUnusedItems();
}
