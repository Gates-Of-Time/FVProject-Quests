#:: Frontier Mountains Named Cycle - Brute-Sarnak Cycle 
#:: Northwest Camp (Burynai)
#:: Spawns Southeast Camp (Goblins)
sub EVENT_SPAWN {
  $spawnPointId = $npc->GetSpawnPointID();
	quest::disable_spawn2($spawnPointId);
}

sub EVENT_DEATH_COMPLETE {
  $spawnPointId = $npc->GetSpawnPointID();
	#:: Send a signal <$spawnPointId> to The Plane of Sky >> zone_controller (50) with no delay
	quest::signalwith(50, $spawnPointId, 0);
}
