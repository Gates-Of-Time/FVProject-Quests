sub EVENT_DEATH {
	my $librarian = int(rand(100) + 1);
	if ($librarian <= 10){
		#:: Spawn a Tower of Frozen Shadow >> #an_angry_librarian (111161), without grid or guild war, at the current location
		$angrylibr = quest::spawn2(111161,0,0,$x,$y,$z,0);
		$attack = $entity_list->GetMobID($angrylibr);
		$angrylibrattk = $attack->CastToNPC();
		$angrylibrattk->AddToHateList($client, 1);
	}
}

