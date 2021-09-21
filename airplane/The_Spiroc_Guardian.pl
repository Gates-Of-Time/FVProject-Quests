sub EVENT_DEATH_COMPLETE {
	#:: Match a The Plane of Sky >> a_spiroc_walker (71014) or a_spiroc_vanquisher (71009) or a_spiroc_revolter (71010) or a_spiroc_expulser (71011) or a_spiroc_caller (71015) or a_spiroc_banisher (71007) or a_spiroc_arbiter (71008)
	if ($entity_list->IsMobSpawnedByNpcTypeID(71014) || $entity_list->IsMobSpawnedByNpcTypeID(71009) || $entity_list->IsMobSpawnedByNpcTypeID(71010) || $entity_list->IsMobSpawnedByNpcTypeID(71011) || $entity_list->IsMobSpawnedByNpcTypeID(71015) || $entity_list->IsMobSpawnedByNpcTypeID(71007) || $entity_list->IsMobSpawnedByNpcTypeID(71008)) {
		#:: Reset spawn timer for 1000ms
		quest::UpdateSpawnTimer(2631, 1000);
	}
}
