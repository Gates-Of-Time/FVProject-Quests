sub EVENT_DEATH_COMPLETE {
	#:: Spawn one and only one The Rathe Mountains >> corrupted_hill_giant (50322), without grid or guild war, at the current location
	quest::spawn2(50322,0,0,$x,$y,$z,$h);
}