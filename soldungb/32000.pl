#:: This is the KOS, NON-merchant version of Zordak Ragefire that spawns second after turning in a Shimmering Pearl to the merchant version
sub EVENT_SPAWN {
	#:: Disable spawn point ID: 6461 (Lord Nagafen (NPC ID: 32040))
	quest::disable_spawn2(6461);
}
#:: This is the KOS, L55 version of Zordak Ragefire that only spawns in the pre-revamp version of Cleric Epic 1.0 quest
sub EVENT_DEATH_COMPLETE {
	my $x = $npc->GetX();
	my $y = $npc->GetY();
	my $z = $npc->GetZ();
	my $h = $npc->GetHeading();
	#:: Spawn one and only one Nagafen's Lair >> 32003 - Zordakalicus Ragefire without grid or guild war, at the specified coordinates
	quest::unique_spawn(32003, 0 , 0, $x, $y, $z, $h);
}