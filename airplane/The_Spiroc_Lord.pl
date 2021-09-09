sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		#:: Create a timer 'dt' that triggers every 30 seconds
		quest::settimer("dt", 30);
	}
	else {
		#:: Stop the timer 'dt' from triggering
		quest::stoptimer("dt");
	}
}

sub EVENT_TIMER {
	#:: Match timer 'dt'
	if ($timer eq "dt") {
		$target = $npc->GetHateTop();
		if ($target->IsPet()) {
			$owner = $target->GetOwnerID();
			$npc->CastSpell(982, $owner);
		}
		else {
			$npc->CastSpell(982, $target);
		}
	}
}

sub EVENT_DEATH_COMPLETE {
	#:: Key a data bucket
	$key = sirran_status;
	#:: Set a value of '5' for 900 seconds (15 min)
	quest::set_data($key, "5", 900);
	#:: Spawn one and only one The Plane of Sky >> Sirran_the_Lunatic (71058), without grid or guild war, at the current location
	quest::unique_spawn(71058, 0, 0, $x, $y, $z);
}
