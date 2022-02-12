#:: Druid Epic 1.0

sub EVENT_DEATH_COMPLETE {
	#:: Spawn a Lake of Ill Omen >> corrupted_barracuda (85224) at the current location
	quest::spawn2(85224, 0, 0, $x, $y, $z, $h);
}
