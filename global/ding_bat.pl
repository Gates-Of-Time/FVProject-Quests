sub EVENT_SPAWN {
	quest::settimer("follow",10);
	quest::say("Ding!");
}

sub EVENT_TIMER {
	if ($timer eq "follow") {
		my $OpponentID = 2161;
		my $getmobbynpctype = $entity_list->GetMobByNpcTypeID($OpponentID);
		my $follow_target = $getmobbynpctype->GetID();
		quest::follow($follow_target);
		quest::stoptimer("follow");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i){
		quest::ding();
	}
	elsif ($text=~/\w+/i) && $client {
		quest::say("$text");
	}
}
