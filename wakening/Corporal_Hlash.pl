sub EVENT_SPAWN {
    #:: Create a timer 'onset' that triggers every 60 seconds (1 min 0 sec)
    quest::settimer("onset", 60);
    #:: Create a timer 'readygo' that triggers every 150 seconds (2 min 30 sec)
    quest::settimer("readygo", 150);
}

sub EVENT_TIMER {
    if ($timer eq "onset") {
        quest::moveto(-4341, -748, -183, -1, 1);
        #:: Stop the timer 'onset'
        quest::stoptimer("onset");
    }
    elsif ($timer eq "readygo" && $x == -4341 && $y == -748) {
        quest::say("Onward men, the eyes of Zek are upon us.");
        #:: Stop the timer 'readygo'
        quest::stoptimer("readygo");
        #:: Send a signal "1" to The Wakening Land >> Berzerker_Voldak (119167) with a 300 second delay
        quest::signalwith(119167, 1, 300);
        #:: Send a signal "1" to The Wakening Land >> Berzerker_Dolvad (119166) with a 300 second delay
        quest::signalwith(119166, 1, 300);
        #:: Send a signal "1" to The Wakening Land >> Disciple_Atharm (119169) with a 300 second delay
        quest::signalwith(119169, 1, 300);
    }
}

sub EVENT_WAYPOINT_ARRIVE {
    if ($wp == 5) {
        quest::say("Hold here squad");
        quest::signal(119050, 300);
    }
}

sub EVENT_SAY {
    if ($text =~ /troop attack/i && $x == -225 && $y == 1725) {
        quest::shout("Destroy them!!");
        quest::me("Suddenly, all around the Sifaye village, several beings phase into reality.  Their eyes glow with the golden light of divinity, obviously sent from a higher plane of existence.  The Kromzek assault squad is surely doomed. You decided to withdraw and report what you have found, perhaps the Lieutenant will understand.");
        #:: Send a signal "2" to The Wakening Land >> Berzerker_Voldak (119167) with a 300 second delay
        quest::signalwith(119167, 2, 300);
    }
}

sub EVENT_SIGNAL {
    #:: Match if signal from wakening/Berzerker_Voldak.pl is "1"
    if ($signal == 1) {
        #:: Start path grid 23
        quest::start(23);
    }
    #:: Match if signal from wakening/Berzerker_Voldak.pl is "2"
    elsif ($signal == 2) {
        quest::say("Grraaaggh! AMBUSH!! Die well!");
        #:: Spawn a The Wakening Land >> a_sifaye_defender (119174), without grid or guild war, at the given location
        quest::spawn2(119174, 0, 0, -146, 1703, -192, 187);
        #:: Spawn a The Wakening Land >> a_sifaye_defender (119174), without grid or guild war, at the given location
        quest::spawn2(119174, 0, 0, -149, 1731, -192, 187);
        #:: Spawn a The Wakening Land >> a_sifaye_defender (119174), without grid or guild war, at the given location
        quest::spawn2(119174, 0, 0, -162, 1738, -192, 187);
        #:: Spawn a The Wakening Land >> a_sifaye_defender (119174), without grid or guild war, at the given location
        quest::spawn2(119174, 0, 0, -172, 1758, -192, 182);
    }
}
