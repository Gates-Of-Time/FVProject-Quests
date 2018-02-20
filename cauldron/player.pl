#:: Chalice of Conquest quest
sub EVENT_PLAYER_PICKUP {
	#:: Match 12274 - Chalice of Conquest, ground spawn created by #Captain_Klunga.pl
	if ($picked_up_id == 12274) {
		#:: Make sure NPC 70072 #Captain_Kluga is spawned
		if ($entity_list->IsMobSpawnedByNpcTypeID(70072)) {
			quest::attack($name);
		}
	}
}
