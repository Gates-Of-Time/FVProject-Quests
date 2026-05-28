sub EVENT_SPAWN {
    #:: Create a timer 'onset1' that triggers every 58 seconds (58 sec)
    quest::settimer("onset1", 58);
}

sub EVENT_TIMER {
    if ($timer eq "onset1") {
        quest::moveto(-4311, -720, -183, -1, 1);
        #:: Stop the timer 'onset1'
        quest::stoptimer("onset1");
    }
}

sub EVENT_SIGNAL {
    #:: Match if signal from wakening/Corporal_Hlash.pl is "1"
    if ($signal == 1) {
        #:: Start path grid 24
        quest::start(24);
        #:: Send a signal "1" to The Wakening Land >> Corporal_Hlash (119168) with a 300 second delay
        quest::signalwith(119168, 1, 300);
    }
    #:: Match if signal from wakening/Corporal_Hlash.pl is "2"
    elsif ($signal == 2) {
        quest::say("Woah! we're being ambushed!!");
        #:: Send a signal "2" to The Wakening Land >> Corporal_Hlash (119168) with a 300 second delay
        quest::signalwith(119168, 2, 300);
    }
}
