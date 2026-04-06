sub EVENT_SPAWN {
    #:: Create a timer '93' that triggers every 1000 seconds (16 min 40 sec).
    quest::settimer(93, 1000);
}

sub EVENT_TIMER {
    if ($timer == 93) {
        #:: Stop the timer '93'.
        quest::stoptimer(93);
        #:: Depop all Eastern Wastes >> #Chief_Ry`Gorr (116577).
        quest::depopall(116577);
    }
}