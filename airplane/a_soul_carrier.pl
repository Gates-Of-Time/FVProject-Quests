sub EVENT_DEATH_COMPLETE {
	#:: Spawn one and only one The Plane of Sky >> Nottap_Ekim (71111), with no grid or guildwar, at the specified location
	quest::unique_spawn(71111, 0, 0, 0, 0, 0, 0);
	#:: Spawn two The Plane of Sky >> an_essence_carrier (71070), with no grid or guildwar, offset from the current location
	quest::spawn2(71070, 0, 0, $x + 10, $y, $z, $h);
	quest::spawn2(71070, 0, 0, $x - 10, $y, $z, $h);
}
