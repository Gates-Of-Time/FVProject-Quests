sub EVENT_DEATH_COMPLETE {
	if ( quest::is_content_flag_enabled("Kunark_HoleEra")) {
		#:: Spawn one and only one Everfrost Peaks >> corrupted_wooly_mammoth (30090), without grid or guild war, at the current location
		quest::unique_spawn(30090, 0, 0, $x, $y, $z);
	}
}