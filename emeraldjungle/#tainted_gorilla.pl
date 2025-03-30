sub EVENT_DEATH_COMPLETE {
	if ( quest::is_content_flag_enabled("Kunark_HoleEra")) {
		#:: Spawn one and only one a Emerald Jungle >> corrupted_gorilla (94140), without grid or guild war, at the current location
		quest::unique_spawn(94140, 0, 0, $x, $y, $z, $h);
	}
}