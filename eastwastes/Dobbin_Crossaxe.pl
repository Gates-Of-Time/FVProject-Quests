sub EVENT_SIGNAL {
    #:: Match if signal from eastwastes/Corbin_Blackwell.pl is "1".
    if ($signal == 1) {
        $ring_seven_final = 1;
        quest::say("We thought it was too late, the Dain will be very pleased!");
        quest::say("Please friend, show me your Mithril ring and I will show you our gratitude.");
    }
    #:: Match if signal from eastwastes/Corbin_Blackwell.pl is "2".
    elsif ($signal == 2) {
        $ring_seven_final = undef;
    }
}

sub EVENT_ITEM {
    #:: Match a 30162 - Mithril Coldain Insignia Ring.
    if ($ring_seven_final == 1 && plugin::takeItems(30162 => 1)) {
        quest::say("Thank you. $name. your deeds will be mentioned to  the Dain. Please take this note from Corbin to Garadain. it may help him to achieve victory over the enemy.");
        $ring_seven_final = undef;
        #:: Give a 1047 - Note from Corbin.
        quest::summonitem(1047);
        #:: Set factions
        quest::faction(406, 30);   #:: + Coldain
        quest::faction(405, 30);   #:: + Dain Frostreaver IV
        quest::faction(419, -30);  #:: - Kromrif
        quest::faction(448, -30);  #:: - Kromzek
    }

    #:: Return unused items.
    plugin::returnUnusedItems();
}
