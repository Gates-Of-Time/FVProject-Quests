sub EVENT_DEATH_COMPLETE {
	#:: Spawn one and only one Nagafen's Lair >> Zordakalicus_Ragefire (32000), without grid or guild war, at the current location
	quest::unique_spawn(32000, 0, 0, $x, $y, $z);
}