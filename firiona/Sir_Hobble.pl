sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("holds a cracked monocle up to his squinting eye. 'I say!! A talking bear!! Squire Fuzzmin, come and take a gander at this rare find! The wonders never cease in the land of Kunark!!'");
		#:: Spawn one and only one Firiona Vie >> Squire_Fuzzmin (84312), with no grid or guild war set, at the specified coordinates
		quest::unique_spawn(84312, 0, 0, 1985, -2243, -75);
		#:: Create a scalar variable to store the NPC's entity ID
		$EntID = $npc->GetID();
		#:: Send a signal containing the NPC's entity ID after a five second delay
		quest::signalwith(84312, $EntID, 5);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
