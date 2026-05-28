sub EVENT_SPAWN {
    #:: Create a timer 'onset3' that triggers every 90 seconds (1 min 30 sec)
    quest::settimer("onset3", 90);
}

sub EVENT_TIMER {
    if ($timer eq "onset3") {
        quest::moveto(-4357, -715, -183, -1, 1);
        #:: Stop the timer 'onset3'
        quest::stoptimer("onset3");
    }
}

sub EVENT_SIGNAL {
    #:: Match if signal from wakening/Corporal_Hlash.pl is "1"
    if ($signal == 1) {
        #:: Start path grid 26
        quest::start(26);
    }
}
