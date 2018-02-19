sub EVENT_ITEM {
	#:: Turn in for 18891 -  Tattered Cloth Note (Note to Hubard L'rodd)
	if (plugin::check_handin(\%itemcount, 18891 => 1)) {
		quest::say("Search!! Find Windstream. Find the mallet!! One. Two. Three.");
		# Spawn Cmdr_Windstream
		quest::spawn2(36096,0,0,-88,-637,-66,127);
		#:: Ding!
		quest::ding();
	}
	plugin::return_items(\%itemcount);
}
