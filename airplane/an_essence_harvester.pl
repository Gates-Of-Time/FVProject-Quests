my $killed;
my $entid1;
my $entid2;
my $mob1;
my $mob2;
my $mobnpc1;
my $mobnpc2;
my $hate_top;

sub EVENT_DEATH {
	if (!$killed) {
		$hate_top = npc->GetHateTop();
		$killed = 1;
	}
}

sub EVENT_DEATH_COMPLETE {
	$killed = undef;
	spawn_stuff();
}

sub spawn_stuff {
	#:: Spawn a The Plane of Sky >> an_essence_carrier (71070)
	$entid1 = quest::spawn2(71070, 0, 0, $x + 10, $y, $z, $h);
	$mob1 = $entity_list->GetMobID($entid1);
	$mobnpc1 = $mob1->CastToNPC();
	$mobnpc1->AddToHateList($hate_top);
	#:: Spawn a The Plane of Sky >> an_essence_carrier (71070)
	$entid2 = quest::spawn2(71070, 0, 0, $x - 10, $y, $z, $h);
	$mob2 = $entity_list->GetMobID($entid2);
	$mobnpc2 = $mob2->CastToNPC();
	$mobnpc2->AddToHateList($hate_top);
	$hate_top = undef;
}
