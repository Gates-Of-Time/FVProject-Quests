sub EVENT_SPAWN {
    #:: Create a timer '1' that triggers every 300 seconds (5 min)
    quest::settimer(1, 300);
    quest::attacknpctype(quest::ChooseRandom(119166, 119167, 119168, 119169));
}

sub EVENT_TIMER {
    if ($timer == 1) {
        #:: Depop without spawn timer
        quest::depop();
    }
}
