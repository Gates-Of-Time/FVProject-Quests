#:: Frontier Mountains Named Cycle - Goblin-Giant-Burynai Cycle 
#:: Southwest Camp (Giants)
#:: Spawns Northwest Camp (Burynai)
sub EVENT_DEATH_COMPLETE {
  $spawnPointId = $npc->GetSpawnPointID();
	#:: Send a signal <$spawnPointId> to The Plane of Sky >> zone_controller (50) with no delay
	quest::signalwith(50, $spawnPointId, 0);
}