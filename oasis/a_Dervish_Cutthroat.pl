#:: Create a scalar variable to store NPC race
my $NPCRace = $npc->GetRace();

sub EVENT_COMBAT {
	#:: Combat state 1 is entered combat
	if ($combat_state == 1) {
		#:: Match race 54 - Orc
		if ($NPCRace == 54) {
			quest::say("Orc stomp, orc kill - orc weapons, your blood will spill.");
		}
		else {
			quest::say("Time to die, $name!");
		}
	}
}

sub EVENT_DEATH_COMPLETE {
	#:: Match race 54 - Orc
	if ($NPCRace == 54) {
		quest::say("My comrades will avenge my death.");
	}
}
