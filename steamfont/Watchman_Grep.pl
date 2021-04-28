sub EVENT_SIGNAL {
	#:: Match a signal '1' from steamfont/Cargo_Clockwork.pl
	if ($signal == 1) {
		#:: Pull a list of clients from the entity list
		my @ClientList = $entity_list->GetClientList();
		#:: Match if the ClientList is not empty
		if (scalar @ClientList > 0) {
			quest::say("What a glorious machine the cargo clockwork is!!");
			#:: Send a signal '1' to Steamfont Mountains >> Cargo_Clockwork (56105) with no delay
			quest::signal(56105, 1, 0);
		}
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
