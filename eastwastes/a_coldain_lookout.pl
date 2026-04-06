sub EVENT_ITEM {
    #:: Match a 30136 - Ry'Gorr Invasion Plans.
    if (plugin::takeItems(30136 => 1)) {
        quest::shout("Aahhh.. You're too late! They're upon us! To arms, men! Death to Scarbrow!");
        #:: Spawn a Eastern Wastes >> ringfivecoord (116570), without grid or guild war, at the given location.
        my $entid = quest::spawn2(116570, 0, 0, -642, -2591, 190, 0);
        #:: Get mob Eastern Wastes >> ringfivecoord (116570)
        my $mob = $entity_list->GetMobID($entid);
        my $mobnpc = $mob->CastToNPC();
        $mobnpc->SignalNPC(1);

        #:: Set factions.
        quest::faction(406, 30);   #:: + Coldain
        quest::faction(405, 30);   #:: + Dain Frostreaver IV
        quest::faction(419, -30);  #:: - Kromrif
        quest::faction(448, -30);  #:: - Kromzek
    }

    #:: Return unused items.
    plugin::returnUnusedItems();
}