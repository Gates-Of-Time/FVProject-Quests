#:: Frontier Mountains Named Cycle - Brute-Sarnak Cycle 
#:: Southwest Camp (Various mobs)
#:: Spawns Northwest Camp (Sarnak)
sub EVENT_DEATH_COMPLETE {
	#:: 92000 - Draketamer and 92001 - a_Sarnak_knight
	$new_mob_id = quest::ChooseRandom(92000, 92001);
	#:: Spawn a Dagnor's Cauldron >> $new_mob_id on pathgrid 9
	quest::unique_spawn($new_mob_id, 9, 0, 3638.879883, 3073.0, 348.75, 130.75);
}
