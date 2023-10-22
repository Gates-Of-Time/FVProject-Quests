sub EVENT_CLICKDOOR {
	my $dragonsup = 0;
 	#:: Match Veeshan's Peak >> Druushk (108512)
	if ($entity_list->IsMobSpawnedByNpcTypeID(108512)) {
		$dragonsup++;
	}
	#:: Match Veeshan's Peak >> Hoshkar (108517)
 	if ($entity_list->IsMobSpawnedByNpcTypeID(108517)) {
		$dragonsup++;
	}
	#:: Match Veeshan's Peak >> Nexona (108513)
	if ($entity_list->IsMobSpawnedByNpcTypeID(108513)) {
		$dragonsup++;
	}
	#:: Match Veeshan's Peak >> Silverwing (108509)
 	if ($entity_list->IsMobSpawnedByNpcTypeID(108509)) {
		$dragonsup++;
	}
	#:: Match Veeshan's Peak >> Xygoz (108511)
	if ($entity_list->IsMobSpawnedByNpcTypeID(108511)) {
		$dragonsup++;
	}
	if ($doorid == 56 || $doorid == 57) {
		if ($dragonsup == 0) {
			$client->Message(0,"You got the door open.");
			quest::forcedooropen(56);
			quest::forcedooropen(57);
		}
		else {
			$client->Message(0,"A seal has been placed on this door by Phara Dar. Perhaps there is a way to remove it.");
		}
	}
}
