sub EVENT_DEATH {
	if ( quest::is_content_flag_enabled("Kunark_HoleEra")) {
		#:: Spawn a Kedge Keep >> corrupted_seahorse (64050), without grid or guild war, at the current location
		quest::spawn2(64050,0,0,$x,$y,$z,$h);
	}
}