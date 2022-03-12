sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		$key = $npc->GetCleanName() . "-dt";
		#:: Match if the key does not exist
		if (!quest::get_data($key)) {
			$target = $npc->GetHateTop();
			if ($target->IsPet()) {
				$owner = $target->GetOwnerID();
				$Client = $entity_list->GetClientByID($owner);
				$Client->BuffFadeAll();
				$npc->CastSpell(982, $owner);
				quest::set_data($key, 1, 44);
			}
			else {
				$target->BuffFadeAll();
				$npc->CastSpell(982, $target->GetID());
				quest::set_data($key, 1, 44);
			}
		}
		#:: Create a timer 'dt' that triggers every 45 seconds
		quest::settimer("dt", 45);
	}
	else {
		#:: Stop the timer 'dt' from triggering
		quest::stoptimer("dt");
	}
}

sub EVENT_TIMER {
	#:: Match timer 'dt'
	if ($timer eq "dt") {
		$key = $npc->GetCleanName() . "-dt";
		#:: Match if the key does not exist
		if (!quest::get_data($key)) {
			if ($combat_state == 1) {
				$target = $npc->GetHateTop();
				if ($target->IsPet()) {
					$owner = $target->GetOwnerID();
					$Client = $entity_list->GetClientByID($owner);
					$Client->BuffFadeAll();
					$npc->CastSpell(982, $owner);
					quest::set_data($key, 1, 44);
				}
				else {
					$target->BuffFadeAll();
					$npc->CastSpell(982, $target->GetID());
					quest::set_data($key, 1, 44);
				}
			}
			else {
				quest::stoptimer("dt")
			}
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
	#:: Match a The Plane of Sky >> a_spiroc_vanquisher (71009) or a The Plane of Sky >> The_Spiroc_Guardian (71013)
	if ($entity_list->IsMobSpawnedByNpcTypeID(71009) || $entity_list->IsMobSpawnedByNpcTypeID(71013)) {
		#:: Reset spawn timer for 1000ms
		quest::UpdateSpawnTimer(2630, 1000);
	}
}
