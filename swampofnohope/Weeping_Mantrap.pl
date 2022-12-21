my $SpawnPointID;

#:: Swamp of No Hope Named Cycle - Frogolok Berserker Cycle 
sub EVENT_SPAWN {
  $SpawnPointID = $npc->GetSpawnPointID();
}

sub EVENT_DEATH_COMPLETE {
	#:: Send a signal <$SpawnPointID> to Swamp of No Hope >> zone_controller (10) with no delay
	quest::signalwith(10, $SpawnPointID, 0);
}