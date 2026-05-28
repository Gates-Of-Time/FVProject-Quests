sub EVENT_SPAWN {
    #:: Create a timer '1' that triggers every 1500 seconds (25 min 0 sec)
    quest::settimer(1, 1500);
}

sub EVENT_ITEM {
    #:: Match a 1708 - Mission Report
    if (plugin::takeItems(1708 => 1)) {
        quest::say("Failure! Incompetence! The whole squad anihilated! I knew this would happen if left in the hands of a worthless mercenary! Well, you can take this report back to Drioc then. Now get out of my sight, mercenary.");
        #:: Grant a small amount of experience
        quest::exp(1000);
        #:: Ding!
        quest::ding();
        #:: Give a 1709 - Report of Failure
        quest::summonitem(1709);
        #:: Depop without spawn timer
        quest::depop();
    }

    #:: Return unused items
    plugin::returnUnusedItems();
}

sub EVENT_TIMER {
    if ($timer == 1) {
        #:: Depop without spawn timer
        quest::depop();
    }
}
