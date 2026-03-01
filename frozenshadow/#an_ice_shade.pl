sub EVENT_DEATH {
	if(!$entity_list->GetMobByNpcTypeID(111144)){
		#:: Spawn a Tower of Frozen Shadow >> #VhalSera (111144), without grid or guild war, at the given location
		quest::spawn2(111144,0,0,-398,400,22,125);
	}
}


