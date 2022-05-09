#:: Frontier Mountains Named Cycle - Brute-Sarnak Cycle 
#:: Southeast Camp (Brutes)
#:: Spawns Southwest Camp (Various mobs)
sub EVENT_DEATH_COMPLETE {
	#:: 92032 - a_mountain_giant_tump, 92076 - a_mountain_giant_hillock, 92178 - Gromlok and 92184 - Miner_Bordakn
	$new_mob_id = quest::ChooseRandom(92032, 92076, 92178, 92184);
	#:: Spawn a Dagnor's Cauldron >> $new_mob_id on pathgrid 108
	quest::unique_spawn($new_mob_id, 108, 0, -1352.75, -627.380005, -111.5, 1.5);
}
