sub EVENT_DEATH {
	my $gnoll = int(rand(100) + 1);
	if ($gnoll <= 5) {
		#:: Spawn a Tower of Frozen Shadow >> #a_large_undead_gnoll (111158), without grid or guild war, at the current location
		quest::spawn2(111158,0,0,$x,$y,$z,0);
		my $keyspawn = $entity_list->GetMobByNpcTypeID(111158);
		$keyspawn->AddToHateList($client, 1);
	}
}
