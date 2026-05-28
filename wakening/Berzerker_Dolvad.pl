sub EVENT_SPAWN {
    #:: Create a timer 'onset2' that triggers every 55 seconds (55 sec)
    quest::settimer("onset2", 55);
}

sub EVENT_TIMER {
    if ($timer eq "onset2") {
        quest::moveto(-4310, -741, -183, -1, 1);
        #:: Stop the timer 'onset2'
        quest::stoptimer("onset2");
    }
}

sub EVENT_SIGNAL {
    #:: Match if signal from wakening/Corporal_Hlash.pl is "1"
    if ($signal == 1) {
        #:: Start path grid 25
        quest::start(25);
    }
}
