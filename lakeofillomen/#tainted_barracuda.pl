#:: Druid Epic 1.0

sub EVENT_DEATH_COMPLETE {
	if (quest::is_content_flag_enabled(Kunark_EpicsEra)) {
		#:: Spawn a Lake of Ill Omen >> corrupted_barracuda (85224) at the current location
		quest::spawn2(85224, 0, 0, $x, $y, $z, $h);
	}
}
