sub EVENT_DEATH {
	$relative = int(rand(100) + 1);
	if ($relative <= 5) {
		#:: Spawn a Tower of Frozen Shadow >> #an_enraged_relative (111143), without grid or guild war, at the current location
		$spawnenraged = quest::spawn2(111143,0,0,$x,$y,$z,0);
		$attack = $entity_list->GetMobID($spawnenraged);
		$enragedattack = $attack->CastToNPC();
		$enragedattack->AddToHateList($client, 1);
	}
}
