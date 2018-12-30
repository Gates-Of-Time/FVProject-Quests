sub EVENT_SPAWN {
	#:: Create a timer that loops every 15 minutes
	quest::settimer("Lenny", 950);
}

sub EVENT_TIMER {
	#:: Catch the "Lenny" timer
	if ($timer eq "Lenny") {
	#:: Stop the timer "Lenny"
	quest::stoptimer("Lenny");
	#:: Signal 19062 - Lenny in Rivervale
	quest::signalwith(19062,1,0);
	#:: Create a timer that loops every 15 minutes
	quest::settimer("Lenny", 950);
	}
}
