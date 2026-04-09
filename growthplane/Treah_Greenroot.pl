sub EVENT_SPAWN {
	quest::setnexthpevent(50);
}

sub EVENT_AGGRO {
	#:: Match a The Plane of Growth >> a_sylvan_protector (127053) on the entity list
	my $sylvan_mob = $entity_list->GetMobByNpcTypeID(127053);
	#:: Match a The Plane of Growth >> a_sylvan_protector (127054) on the entity list
	my $sylvan2_mob = $entity_list->GetMobByNpcTypeID(127054);
 
	if ($sylvan_mob) {
		my $sylvan_mobnpc = $sylvan_mob->CastToNPC();
		$sylvan_mobnpc->AddToHateList($client, 1);
	}
	if ($sylvan2_mob) {
		my $sylvan2_mobnpc = $sylvan2_mob->CastToNPC();
		$sylvan2_mobnpc->AddToHateList($client, 1);
	}
}

sub EVENT_HP {
	#:: Match a The Plane of Growth >> a_sylvan_protector (127055) on the entity list
	my $sylvan3_mob = $entity_list->GetMobByNpcTypeID(127055);
	#:: Match a The Plane of Growth >> a_sylvan_protector (127056) on the entity list
	my $sylvan4_mob = $entity_list->GetMobByNpcTypeID(127056);
	#:: Match a The Plane of Growth >> a_sylvan_protector (127061) on the entity list
	my $sylvan5_mob = $entity_list->GetMobByNpcTypeID(127061);

	if ($hpevent == 50) {
		if ($sylvan3_mob) {
			my $sylvan3_mobnpc = $sylvan3_mob->CastToNPC();
			$sylvan3_mobnpc->AddToHateList($client, 1);
		}
		if ($sylvan4_mob) {
			my $sylvan4_mobnpc = $sylvan4_mob->CastToNPC();
			$sylvan4_mobnpc->AddToHateList($client, 1);
		}
		quest::setnexthpevent(20);
	}
	elsif ($hpevent == 20) {
		if ($sylvan5_mob) {
			my $sylvan5_mobnpc = $sylvan5_mob->CastToNPC();
			$sylvan5_mobnpc->AddToHateList($client, 1);
		}
	}
}

