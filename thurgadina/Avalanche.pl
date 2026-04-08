sub EVENT_SPAWN {
	#:: Create a timer 'follow' that triggers every 1 seconds (1 sec).
	quest::settimer("follow", 1);
}

sub EVENT_TIMER {
	if ($timer eq "follow") {
		#:: Match a Thurgadin >> Wolfmaster_Berglind (115102) on the entity list.
		my $getmobbynpctype = $entity_list->GetMobByNpcTypeID(115102);
		if ($getmobbynpctype) {
			my $follow_target = $getmobbynpctype->GetID();
			quest::follow($follow_target);
		}
		#:: Stop the timer 'follow'.
		quest::stoptimer("follow");
	}
}

