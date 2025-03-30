sub EVENT_DEATH_COMPLETE {
	if ( quest::is_content_flag_enabled("Kunark_HoleEra")) {
		#:: Spawn one and only one The Rathe Mountains >> corrupted_hill_giant (50322), without grid or guild war, at the current location
		quest::unique_spawn(50322,0,0,$x,$y,$z,$h);
	}
}