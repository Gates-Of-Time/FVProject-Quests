sub EVENT_AGGRO {
	my $entid1;
	my $entid2;
	my $mob1;
	my $mob2;
	my $mobnpc1;
	my $mobnpc2;
	
	quest::say("I call for the Bloodforge Brigade, to my side at once!");
	$entid1 = quest::spawn2(60082, 0, 0, -370, -160, 11.13, 510);
	$mob1 = $entity_list->GetMobID($entid1);
	$mobnpc1 = $mob1->CastToNPC();
	$mobnpc1->AddToHateList($npc->GetHateTop());
	$entid2 = quest::spawn2(60081, 0, 0, -350, -160, 11.13, 510);
	$mob2 = $entity_list->GetMobID($entid2);
	$mobnpc2 = $mob2->CastToNPC();
	$mobnpc2->AddToHateList($npc->GetHateTop());
}
