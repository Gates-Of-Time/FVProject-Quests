sub EVENT_WAYPOINT_DEPART {
    if ($wp == 19) {
        #:: Create a timer '1' that triggers every 60 seconds (1 min 0 sec).
        quest::settimer(1, 60);
    }
}

sub EVENT_TIMER {
    if ($timer == 1) {
        #:: Stop the timer '1'.
        quest::stoptimer(1);
        #:: Depop with spawn timer active.
        quest::depop_withtimer();
    }
}