sub EVENT_SPAWN {
	#:: Create a timer 'despawn' that triggers in 600 seconds (10 min)
  	quest::settimer("despawn",600);
	quest::SetRunning(1);
	#:: Move to the specified location and guard 
	quest::moveto(-1558,-3558,3,0,1);
}

sub EVENT_TIMER {
	#:: Stop the timer "despawn"
	quest::stoptimer("despawn");
	#:: Depop without spawn timer
	quest::depop();
}

sub EVENT_COMBAT {
	if ($combat_state == 1) {
		#:: Stop the timer "despawn"
		quest::stoptimer("despawn");
	}
	else {
		#:: Create a timer 'despawn' that triggers in 600 seconds (10 min)
		quest::settimer("despawn", 600);
	}
}

sub EVENT_DEATH_COMPLETE {
	#:: Stop the timer "despawn"
  	quest::stoptimer("despawn");
}

sub EVENT_WAYPOINT_ARRIVE {
	if ($wp == 1) {
		#:: Get mob East Karana >>  Althele (15044)
		my $mob = $entity_list->GetMobID(15044);
		if($mob) {
			#:: Add the Althele to the hate list of the Dark_Elf_Corruptor
			my $mobnpc = $mob->CastToNPC();
			if($mobnpc) {
				quest::shout("Innoruuk claims your souls and this land!");
				$npc->AddToHateList($mobnpc, 1);
			}
		}
	}
}