#:: Frontier Mountains Named Cycle - Brute-Sarnak Cycle 
#:: Northwest Camp (Burynai)
#:: Spawns Southeast Camp (Goblins)
sub EVENT_DEATH_COMPLETE {
	#:: 92027 - goblin_raider, 92116 - a_goblin_plaguebringer and 92182 - Blugtigin
	$new_mob_id = quest::ChooseRandom(92027, 92116, 92182);
	#:: Spawn a Dagnor's Cauldron >> $new_mob_id on pathgrid 0
	quest::unique_spawn($new_mob_id, 0, 0, -612.0, -2830, -478.75, 244.0);
}
