#:: Frontier Mountains Named Cycle - Goblin-Giant-Burynai Cycle 
#:: Southeast Camp (Goblins)
#:: Spawns Southwest Camp (Giants)
sub EVENT_DEATH_COMPLETE {
	#:: 92099 - a_mountain_giant_brae and 92150 - Krenlek
	$new_mob_id = quest::ChooseRandom(92099, 92150);
	#:: Spawn a Dagnor's Cauldron >> $new_mob_id on pathgrid 192
	quest::unique_spawn($new_mob_id, 192, 0, 2959.879883 , -238.880005 , -45.380001 , 244.75);
}
