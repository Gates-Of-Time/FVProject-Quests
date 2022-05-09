#:: Frontier Mountains Named Cycle - Goblin-Giant-Burynai Cycle 
#:: Southwest Camp (Giants)
#:: Spawns Northwest Camp (Burynai)
sub EVENT_DEATH_COMPLETE {
	#:: 92049 - a_burynai_digmaster, 92061 - a_burynai_rockshaper, 92130 - burynai_treasure_seeker and 92154 - Eboneyes
	$new_mob_id = quest::ChooseRandom(92049, 92061, 92130, 92154);
	#:: Spawn a Dagnor's Cauldron >> $new_mob_id on pathgrid 191
	quest::unique_spawn($new_mob_id, 191, 0, -2328.75, 916.75, -34.130001 , 409.25);
}
