sub EVENT_SPAWN {
	#:: Create a timer 'follow' that triggers every 1 seconds (1 sec)
	quest::settimer("follow", 1);
}

sub EVENT_TIMER {
	if ($timer eq "follow") {
		#:: Match a Thurgadin >> Wolfmaster_Gunnar (115101) on the entity list
		my $getmobbynpctype = $entity_list->GetMobByNpcTypeID(115101);
		my $follow_target = $getmobbynpctype->GetID();
		quest::follow($follow_target);
		#:: Stop the timer 'follow'
		quest::stoptimer("follow");
	}
}

