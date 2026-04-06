sub EVENT_SPAWN {
    #:: Create a timer '91' that triggers every 1000 seconds (16 min 40 sec).
    quest::settimer(91, 1000);
}

sub EVENT_TIMER {
    if ($timer == 91) {
        #:: Stop the timer '91'.
        quest::stoptimer(91);
        #:: Depop all spawned Eastern Wastes >> Kromrif_Soldier (116548).
        quest::depopall(116548);
    }
}