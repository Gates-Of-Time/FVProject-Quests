sub EVENT_SPAWN {
    #:: Create a timer '90' that triggers every 1000 seconds (16 min 40 sec).
    quest::settimer(90, 1000);
}

sub EVENT_TIMER {
    if ($timer == 90) {
        #:: Stop the timer '90'.
        quest::stoptimer(90);
        #:: Depop all spawned Eastern Wastes >> Ry`Gorr_Elite (116556).
        quest::depopall(116556);
    }
}