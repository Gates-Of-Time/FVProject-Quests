sub EVENT_DEATH {
	if ( quest::is_content_flag_enabled("Kunark_HoleEra")) {
		#:: Spawn one and only a Ocean of Tears >> corrupted_seafury_cyclops (69142), without grid or guild war, at the current location
		quest::unique_spawn(69142,0,0,$x,$y,$z,$h);
	}
}