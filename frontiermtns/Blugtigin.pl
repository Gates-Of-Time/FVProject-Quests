my $SpawnPointID;

#:: Frontier Mountains Named Cycle - Goblin-Giant-Burynai Cycle 
#:: Southeast Camp (Goblins)
#:: Spawns Southwest Camp (Giants)
sub EVENT_SPAWN {
  $SpawnPointID = $npc->GetSpawnPointID();
}

sub EVENT_DEATH_COMPLETE {
	#:: Send a signal <$SpawnPointID> to Frontier Mountains >> zone_controller (10) with no delay
	quest::signalwith(10, $SpawnPointID, 0);
}