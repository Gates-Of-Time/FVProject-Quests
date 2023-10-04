my @Data = ("sebilis", 89, -117, -1283, -175, 46);

sub EVENT_SPAWN {
	#:: Create a proximity 400 units across, without proximity say
	quest::set_proximity($x - 200, $x + 200, $y - 200, $y + 200, $z - 200, $z + 200, 0);
	#:: Create a HP event at 96 percent health
	quest::setnexthpevent(96);
}

sub EVENT_AGGRO {
	#:: Create a timer 'leash' that triggers every second
	quest::settimer("leash", 1);
	
	#:: Trigger EVENT_ENTER subroutine to makue sure we banish out of level clients
	EVENT_ENTER();
}

sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		$key = $npc->GetCleanName() . "-banish";
		#:: Match if the key does not exist
		if (!quest::get_data($key)) {
			BANISH();
		}
		#:: Create a timer 'banish' that triggers every 30 seconds
		quest::settimer("banish", 30);
	}
	else {
		#:: Stop the timer 'banish' from triggering
		quest::stoptimer("banish");
	}
}

sub EVENT_HP {
	#:: Stop the timer 'leash' from triggering
	quest::stoptimer("leash");
	#:: Trigger EVENT_AGGRO subroutine to makue sure the timer is running
	EVENT_AGGRO();
	#:: Set another HP event to catch any HP loss
	quest::setnexthpevent(int($npc->GetHPRatio())-9);
}

sub EVENT_TIMER {
	#:: Match timer 'leash'
	if ($timer eq "leash") {
		if ($x < -838 || $x > -361 || $y < -2280 || $y > -1850) {
			#:: Trigger WIPE_AGGRO subroutine
			WIPE_AGGRO();
		}
	}

	#:: Match timer 'banish'
	if ($timer eq "banish") {
		$key = $npc->GetCleanName() . "-banish";
		#:: Match if the key does not exist
		if (!quest::get_data($key)) {
			if ($combat_state == 1) {
				BANISH();
			}
			else {
				quest::stoptimer("banish")
			}
		}
	}
}

sub WIPE_AGGRO {
	$npc->BuffFadeAll();
	$npc->WipeHateList();
	$npc->SetHP($npc->GetMaxHP());
	$npc->GMMove($npc->GetSpawnPointX(), $npc->GetSpawnPointY(), $npc->GetSpawnPointZ(), $npc->GetSpawnPointH());
	#:: Stop the timer 'leash' from triggering
	quest::stoptimer("leash");
	#:: Create a HP event at 96 percent health
	quest::setnexthpevent(96);
}

sub BANISH {
	$Instance = quest::GetInstanceID();
	$target = $npc->GetHateTop();
	if ($target->IsPet()) {
		$owner = $target->GetOwnerID();
		$Client = $entity_list->GetClientByID($owner);
		if ($Client->BuffCount()) {
			for ($i=0; $i < $Client->BuffCount(); $i++) {
				#:: Match NOT: 
				#:: 130 - Divine Barrier
				#:: 199 - Harmshield
				#:: 207 - Divine Aura
				if ($Client->FindBuffBySlot($i) !~ [130, 199, 207]) {
					$Client->MovePCInstance($Data[1], $Instance, $Data[2], $Data[3], $Data[4], $Data[5]);
					$entity_list->RemoveFromHateLists($Client);
				}
			}
		}
	}
	else {
		if ($target->BuffCount()) {
			for ($i=0; $i < $target->BuffCount(); $i++) {
				#:: Match NOT: 
				#:: 130 - Divine Barrier
				#:: 199 - Harmshield
				#:: 207 - Divine Aura
				if ($target->FindBuffBySlot($i) !~ [130, 199, 207]) {
					$target->MovePCInstance($Data[1], $Instance, $Data[2], $Data[3], $Data[4], $Data[5]);
					$entity_list->RemoveFromHateLists($target);
				}
			}
		}
	}
}