my $SpawnPointID;

#:: Frontier Mountains Named Cycle - Brute-Sarnak Cycle 
#:: Southwest Camp (Various mobs)
#:: Spawns Northwest Camp (Sarnak)
sub EVENT_SPAWN {
  $SpawnPointID = $npc->GetSpawnPointID();
}

sub EVENT_DEATH_COMPLETE {
	#:: Send a signal <$SpawnPointID> to Frontier Mountains >> zone_controller (10) with no delay
	quest::signalwith(10, $SpawnPointID, 0);
}