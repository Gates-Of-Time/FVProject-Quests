sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoints 3, 8, and 18
	if (($wp eq 3) || ($wp eq 8) || ($wp eq 18)) {
		quest::say("Hear yee. Master Narex of the Indigo Brotherhood is offering one gold piece for every Leatherfoot Raider skullcap.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
