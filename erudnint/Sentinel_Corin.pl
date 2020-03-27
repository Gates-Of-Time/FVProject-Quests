sub EVENT_DEATH_COMPLETE {
	quest::say("Prepare to meet the vengeance of Erud!");
	#:: Spawn a The Erudin Palace >> a_water_elemental (23081) at current location
	quest::spawn2(23081, 0, 0, $x, $y, $z, $h);
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
