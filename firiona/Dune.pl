sub EVENT_SPAWN {
	#:: Set a timer 'follow' that triggers every 10 seconds
	quest::settimer("follow", 10);
}

sub EVENT_TIMER{
	if ($timer eq "follow") {
		#:: Create a scaler variable to store the npc_type ID of Firiona Vie >> Scout_Bowfist (84131)
		my $OpponentID = 84131;
		my $getmobbynpctype = $entity_list->GetMobByNpcTypeID($OpponentID);
		my $follow_target = $getmobbynpctype->GetID();
		quest::follow($follow_target);
		quest::stoptimer("follow");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
