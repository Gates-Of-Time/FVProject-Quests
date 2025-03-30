sub EVENT_DEATH {
	if ( quest::is_content_flag_enabled("Kunark_HoleEra")) {
		#:: Spawn a Lesser Faydark >> corrupted_brownie (57117), without grid or guild war, at the current location
		quest::spawn2(57117,0,0,$x,$y,$z,$h);
	}
}