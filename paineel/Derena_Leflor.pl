sub EVENT_WAYPOINT_ARRIVE {
	if ($wp eq 14) {
		#:: 0=Stand, 1=Sit, 2=Duck, 3=Feign Death, 4=Kneel
		$npc->SetAppearance(1);
	}
	elsif ($wp eq 28) {
		#:: 0=Stand, 1=Sit, 2=Duck, 3=Feign Death, 4=Kneel
		$npc->SetAppearance(4);
	}
	elsif ($wp eq 52) {
		#:: 0=Stand, 1=Sit, 2=Duck, 3=Feign Death, 4=Kneel
		$npc->SetAppearance(1);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
