sub EVENT_SPAWN {
    #:: Pause for 2 ms (0.002 sec)
    quest::pause(2);
    $paladin = 0;
}

sub EVENT_WAYPOINT_DEPART {
    if ($paladin < 8) {
        $paladin = $paladin + 1;
        #:: Pause for 273 ms (0.273 sec)
        quest::pause(273);
    }
    elsif ($paladin == 8) {
        $paladin = $paladin + 1;
    }
    elsif ($paladin > 8 && $paladin < 16) {
        $paladin = $paladin + 1;
    }
    elsif ($paladin == 16) {
        $paladin = $paladin + 1;
        #:: Pause for 155 ms (0.155 sec)
        quest::pause(155);
        #:: Set runspeed
        quest::modifynpcstat("runspeed", 2.5);
    }
    elsif ($paladin > 16 && $paladin < 23) {
        $paladin = $paladin + 1;
        #:: Pause for 155 ms (0.155 sec)
        quest::pause(155);
        #:: Set runspeed
        quest::modifynpcstat("runspeed", 2.5);
        #:: Create a timer '7' that triggers every 755 seconds (12 min 35 sec).
        quest::settimer(7, 755);
    }
}

sub EVENT_TIMER {
    if ($timer == 7) {
        #:: Stop the timer '7'.
        quest::stoptimer(7);
        #:: Depop all Eastern Wastes >> Paladin_of_Brell (116549)
        quest::depopall(116549);
    }
}