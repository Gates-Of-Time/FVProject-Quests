#:: Frontier Mountains Named Cycle - Brute-Sarnak Cycle 
#:: Northwest Camp (Sarnak)
#:: Spawns Southeast Camp (Brutes)
sub EVENT_DEATH_COMPLETE {
	#:: 92077 - a_berserk_brute, 92156 - Joojooga and 92176 - Boogoog
	$new_mob_id = quest::ChooseRandom(92077, 92156, 92176);
	#:: Spawn a Dagnor's Cauldron >> $new_mob_id on pathgrid 184
	quest::unique_spawn($new_mob_id, 184, 0, -2217.75, -3424.25, -486.880005 , 354.25);
}
