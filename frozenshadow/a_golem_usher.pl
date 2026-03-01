sub EVENT_DEATH {
	my $librarian = int(rand(100) + 1);
	if ($librarian <= 10){
		#:: Spawn a Tower of Frozen Shadow >> #an_enraged_relative (111143), without grid or guild war, at the current location
		$angrylibr = quest::spawn2(111143,0,0,$x,$y,$z,0);
		$attack = $entity_list->GetMobID($angrylibr);
		$angrylibrattk = $attack->CastToNPC();
		$angrylibrattk->AddToHateList($client, 1);
	}
}
