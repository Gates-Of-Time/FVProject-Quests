sub EVENT_DEATH_COMPLETE {
	#:: Spawn a The Plane of Sky >> a_soul_harvester (71110), with no grid or guildwar set, offset from the current location
	quest::spawn2(71110, 0, 0, $x + 10, $y, $z, $h);
	quest::spawn2(71110, 0, 0, $x - 10, $y, $z, $h);
}
