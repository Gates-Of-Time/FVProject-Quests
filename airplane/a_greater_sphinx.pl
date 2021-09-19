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
				$Client = $entity_list->GetClientByID($target);
				$Client->BuffFadeAll();
				$npc->CastSpell(982, $target);
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
			$target = $npc->GetHateTop();
			if ($target->IsPet()) {
				$owner = $target->GetOwnerID();
				$Client = $entity_list->GetClientByID($owner);
				$Client->BuffFadeAll();
				$npc->CastSpell(982, $owner);
				quest::set_data($key, 1, 44);
			}
			else {
				$Client = $entity_list->GetClientByID($target);
				$Client->BuffFadeAll();
				$npc->CastSpell(982, $target);
				quest::set_data($key, 1, 44);
			}
		}
	}
}
