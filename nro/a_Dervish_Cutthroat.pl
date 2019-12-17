sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		#:: Match race 54 - Orc
		if ($npc->GetRace() == 54) {
			quest::say("Orc stomp, orc kill - orc weapons, your blood will spill.");
		}
		else {
			quest::say("Time to die $name!");
		}
	}
}

sub EVENT_DEATH_COMPLETE {
	if ($npc->GetRace() == 54) {
		quest::say("My comrades will avenge my death.");
	}
}
