sub EVENT_SPAWN {
	#:: Match a Timorous Deep >> #Faydedar (96073) on the entity list
	if ($entity_list->IsMobSpawnedByNpcTypeID(96073)) {
		quest::depop();
	}
}
