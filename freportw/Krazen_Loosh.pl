sub EVENT_SPAWN {
	#:: Run	
	quest::SetRunning(1); 
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("The towering wall of stone is clearly unmovable at this point, being held in place by collection of magical energies.");
	}
}

#:: NPC speaks at waypoint 30 then speaks and runs at waypoint 42 
sub EVENT_WAYPOINT_ARRIVE {
	if ($wp == 8) {
		quest::say("Hello, Alayle. We just got a message from Qeynos. I think you should come with me.");
		#:: Signal Guard Alayle
		quest::signalwith(9141,1,0);
		#:: Walk
		quest::SetRunning(0);
	}
} 

sub EVENT_SIGNAL { 
	#:: Receive Signal 1 from Guard Alayle
	if ($signal == 1) {
		quest::say("As you try to open penetrate the stone wall it is clearly being held in place by a powerful force.");
		#:: Attack Guard  Alayle
		quest::attack(9141);
		#:: Signal Guard Lithnon
		quest::signalwith(9106,1,0);
	}
}
