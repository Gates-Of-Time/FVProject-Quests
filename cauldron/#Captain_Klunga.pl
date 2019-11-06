sub EVENT_SPAWN {
	#:: Appearance 1 - Sit
	$npc->SetAppearance(1);
}

sub EVENT_ITEM {
	#:: Match a 12278 - Abandoned Orc Shovel
	if (plugin::takeItems(12278 => 1)) {
		#:: Appearance 0 - Stand
		$npc->SetAppearance(0);
		#:: Move to the specified location and guard 
		quest::moveto(-395.87, 807.04, 70.53, 0, 1);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Create a 12274 - Chalice of Conquest at current coordinates
	quest::creategroundobject(12274, $x, $y, $z, $h);
	#:: Change faction to KOS
	$npc->SetNPCFactionID(5013);
}
