sub EVENT_SPAWN {
	quest::settimer("follow", 10);
}

sub EVENT_TIMER {
	if ($timer eq "follow") {
		#:: 33066 - Blixkin_Entopop - (misty)
		my $OpponentID = 33066;
		my $getmobbynpctype = $entity_list->GetMobByNpcTypeID($OpponentID);
		my $follow_target = $getmobbynpctype->GetID();
		quest::follow($follow_target);
		quest::stoptimer("follow");
	}
}

sub EVENT_SIGNAL {
	#:: Signal sent from Blixkin_Entopop.pl
	quest::emote("clicks at Blixkin happily.");
	#:: Send a signal to 33066 - Blixkin_Entopop - (misty)
	quest::signal(33066);
}
