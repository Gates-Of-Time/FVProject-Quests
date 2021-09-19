sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("So you have awakened me!! It seems my brother was not much of a challenge. Before we get on to business, there are some matters that must be addressed. But enough talk, let's address these matters first.");
	}
	elsif ($text=~/matters/i) {
		quest::say("The matter at hand is where you are to go after this. I believe that crazy halfling will be showing up. But if by chance he oversleeps, there is some information you should have.");
	}
	elsif ($text=~/information/i) {
		quest::say("You have come to my home. This is also home to the soul carriers and essence harvesters. On the mortal plane, they are still natural enemies, but have learned to live together and are now peaceful creatures here in the Plane of Sky. Be forewarned that as you proceed about your tour, each gate you must reach and pass through will become substantially harder.");
	}
}

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

sub EVENT_DEATH_COMPLETE {
	#:: Spawn The Plane of Sky >> the_Hand_of_Veeshan (71060), without grid or guild war, at the specified location
	quest::spawn2(71060, 0, 0, -1462.2, -270.1, 1250.9, 62.9);
}
