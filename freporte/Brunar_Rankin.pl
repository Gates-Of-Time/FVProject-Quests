sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("How are you? Please excuse my stench. I fish all day and night just to feed my large family. You look like an adventurer. That must be exciting. I am but a humble fisherman. Maybe someday we shall both be rich. You by your treasure and me by my catch.");
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: When NPC arrives at 13
	if ($wp == 13) {
		quest::say("Here is my catch for today, Gregor");
		#:: Send a signal "1" to East Freeport >> Gregor_Nasin (10171)
		quest::signal(10171,1);
	}
	#:: When NPC arrives at waypoint 34
	if ($wp == 34) {
		quest::say("Ho hum, what a lovely day !");
		#:: Set running true (run)
		quest::SetRunning(1);
	}
	#:: When NPC arrives at waypoint 39
	if ($wp == 39) {
		#:: Set running false (walk)
		quest::SetRunning(0);
	    }
	#:: When NPC arrives at waypoint 44
	if ($wp == 44) {
		#:: Set running true (run)
		quest::SetRunning(1);
	}
	#:: When NPC arrives at waypoint 59
	if ($wp == 59) {
		#:: Set running false (walk)
		quest::SetRunning(0);
	}			
}
