sub EVENT_DEATH_COMPLETE {
	#:: Spawn a The Plane of Sky >> an_essence_tamer (71071)
	quest::spawn2(71071, 0, 0, $x + 10, $y, $z, $h);
	#:: Spawn a The Plane of Sky >> an_essence_tamer (71071)
	quest::spawn2(71071, 0, 0, $x - 10, $y, $z, $h);
}
