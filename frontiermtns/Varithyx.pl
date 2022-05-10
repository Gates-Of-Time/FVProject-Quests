#:: Frontier Mountains Named Cycle - Brute-Sarnak Cycle 
#:: Northwest Camp (Sarnak)
#:: Spawns Southeast Camp (Brutes)
sub EVENT_DEATH_COMPLETE {
  $spawnPointId = $npc->GetSpawnPointID();
	#:: Send a signal <$spawnPointId> to The Plane of Sky >> zone_controller (50) with no delay
	quest::signalwith(50, $spawnPointId, 0);
}