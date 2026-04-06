sub EVENT_SAY {
    if ($text =~ /hail/i) {
        quest::say("Oh, I uh... err, hello there. Umm, thank Brelll you're here, those bloody Kromrif were going to torture me! Yes, yes, and you've saved me! How can I ever repay you?");
    }
    elsif ($text =~ /murdrick/i) {
        quest::emote("looks away and stammers, Ehh, ahh, Mur who?");
    }
    elsif ($text =~ /berradin/i) {
        quest::emote("goes even paler than usual, Hmm, Berradin you say? Sorry, but I've never even heard the name.");
    }
}

sub EVENT_ITEM {
    #:: Match a 18171 - Letter to Peffin.
    if (plugin::takeItems(18171 => 1)) {
        #:: Spawn a Eastern Wastes >> Kromrif_Elite (116182), without grid or guild war, at the given location.
        quest::spawn2(116182, 0, 0, 3364, -1579, 163.8, 35.8);
        quest::spawn2(116182, 0, 0, 3314, -1557, 163.8, 42.4);
        quest::spawn2(116182, 0, 0, 3355, -1625, 163.8, 36.9);
        #:: Create a timer '1' that triggers every 10 seconds (10 sec).
        quest::settimer(1, 10);
        quest::moveto(3303, -1623, 163.3);
    }

    #:: Return unused items.
    plugin::returnUnusedItems();
}

sub EVENT_TIMER {
    if ($timer == 1) {
        #:: Stop the timer '1'
        quest::stoptimer(1);
        #:: Spawn a Eastern Wastes >> #Peffin_Ambersnow (116574), without grid or guild war, at the given location.
        quest::spawn2(116574, 0, 0, 3419.4, -1739.7, 143.9, 191.5);
        #:: Depop with spawn timer active
        quest::depop_withtimer();
    }
}