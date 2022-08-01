my $SpawnPointID;

#:: Frontier Mountains Named Cycle - Brute-Sarnak Cycle 
#:: Southwest Camp (Various mobs)
#:: Spawns Northwest Camp (Sarnak)
sub EVENT_SPAWN {
  $SpawnPointID = $npc->GetSpawnPointID();
}

sub EVENT_DEATH_COMPLETE {
	#:: Send a signal <$SpawnPointID> to The Plane of Sky >> zone_controller (50) with no delay
	quest::signalwith(50, $SpawnPointID, 0);
}