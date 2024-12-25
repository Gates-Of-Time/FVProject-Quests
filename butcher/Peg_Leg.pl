sub EVENT_DEATH_COMPLETE {
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) { 
		#:: Spawn a Butcherblock >> a_lesser_spirit (68251), without grid or guild war, at the current location
		quest::spawn2(69149,0,0,$x,$y,$z,$h);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
