sub EVENT_SPAWN {
    $talk1 = undef;
    quest::say("It is worse than I thought. Not only are they prepared for an attack, but they have the Kromrif here to help them. Our steel will be tested today. Be sure not to show the troops any fear.");
    #:: Pause for 2 ms (0.002 sec)
    quest::pause(2);
}

sub EVENT_ITEM {
    #:: Match a 1092 - Chief Ry`Gorr's Head.
    if (plugin::takeItems(1092 => 1)) {
        quest::say("Good work friend! The Dain will hear of this right away. We couldn't have defeated the Ry'gorr without your help. Take this ring as proof that you have served the Coldain well. You may wish to show it to the Seneschal should you ever stop in our fine city. Farewell, $name, it has been my pleasure knowing you.");
        #:: Give a 30164 - Velium Coldain Insignia Ring.
        quest::summonitem(30164);
        #:: Set factions.
        quest::faction(406, 30);   #:: + Coldain
        quest::faction(405, 30);   #:: + Dain Frostreaver IV
        quest::faction(419, -30);  #:: - Kromrif
        quest::faction(448, -30);  #:: - Kromzek
        #:: Grant a huge amount of experience
        quest::exp(2000000);
        #:: Depop without spawn timer
        quest::depop();
    }

    #:: Return unused items.
    plugin::returnUnusedItems();
}

sub EVENT_WAYPOINT_DEPART {
    if (!defined($talk1)) {
        $talk1 = 1;
        #:: Create a timer '30' that triggers every 10 seconds (10 sec).
        quest::settimer("30", 10);
        #:: Pause for 200 ms (0.2 sec)
        quest::pause(200);
    }
    elsif ($talk1 == 1) {
        $talk1 = 2;
        #:: Create a timer '27' that triggers every 600 seconds (10 min).
        quest::settimer("27", 600);
    }
}

sub EVENT_TIMER {
    if ($timer eq "30") {
        #:: Stop the timer '30'
        quest::stoptimer("30");
        quest::say("TROOPS! FALL IN!!");
        #:: Create a timer '31' that triggers every 10 seconds (10 sec).
        quest::settimer("31", 10);
    }
    elsif ($timer eq "31") {
        #:: Stop the timer '31'
        quest::stoptimer("31");
        quest::say("Listen up men!");
        #:: Create a timer '32' that triggers every 20 seconds (20 sec).
        quest::settimer("32", 20);
    }
    elsif ($timer eq "32") {
        #:: Stop the timer '32'
        quest::stoptimer("32");
        quest::say("You all know why we're here. For decades these savages have menaced our people. Recent events have been too much to bear and the Dain has declared war! We will stop at nothing short of the Ry`gorr's annihilation!");
        #:: Create a timer '33' that triggers every 20 seconds (20 sec).
        quest::settimer("33", 20);
    }
    elsif ($timer eq "33") {
        #:: Stop the timer '33'
        quest::stoptimer("33");
        quest::say("No longer will we tolerate their heathen presence in our lands! Never again will we mourn the loss of a Coldain to these pawns of the Kromrif! Our deeds here today shall make this land safe for Coldain for all time!");
        #:: Create a timer '34' that triggers every 20 seconds (20 sec).
        quest::settimer("34", 20);
    }
    elsif ($timer eq "34") {
        #:: Stop the timer '34'
        quest::stoptimer("34");
        quest::say("Today the Ry`gorr fall! Tomorrow the Kromrif!!");
        quest::say("Fall out men!!");
        #:: Create a timer '35' that triggers every 45 seconds (45 sec).
        quest::settimer("35", 45);
    }
    elsif ($timer eq "35") {
        #:: Stop the timer '35'
        quest::stoptimer("35");
        quest::say("Stay back from the initial charge, my friend. We will go directly for the chief once the troops are engaged. Follow me closely!");
        #:: Create a timer '36' that triggers every 30 seconds (30 sec).
        quest::settimer("36", 30);
    }
    elsif ($timer eq "36") {
        #:: Stop the timer '36'
        quest::stoptimer("36");
        quest::say("For the Glory of Thurgadin! CHARGE!!");
        #:: Create a timer '37' that triggers every 65 seconds (1 min 5 sec).
        quest::settimer("37", 65);
    }
    elsif ($timer eq "37") {
        #:: Stop the timer '37'
        quest::stoptimer("37");
        #:: Pause for 580 ms (0.58 sec)
        quest::pause(580);
    }
    elsif ($timer eq "27") {
        #:: Stop the timer '27'
        quest::stoptimer("27");
        #:: Depop without spawn timer
        quest::depop();
    }
}