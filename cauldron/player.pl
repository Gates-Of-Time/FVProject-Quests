#:: Chalice of Conquest quest
sub EVENT_PLAYER_PICKUP {
	#:: Match 12274 - Chalice of Conquest, ground spawn created by #Captain_Klunga.pl
	if ($picked_up_id == 12274) {
		#:: Make sure NPC 70072 #Captain_Kluga is spawned
		if ($entity_list->IsMobSpawnedByNpcTypeID(70072)) {
			#:: Make sure there are players in zone
			if ($entity_list->GetClientList()) {
				#:: Randomly select some unlucky player within 100 units
				my $rClient = $entity_list->GetRandomClient($x,$y,$z, 100);
				if ($rClient) {
					#:: Get him!
        				quest::attack($rClient->GetName());
	      			} else {
					#:: If we cannot pick someone, depop
      					$npc->Depop(0);
  				}
			}
		}
	}
}
