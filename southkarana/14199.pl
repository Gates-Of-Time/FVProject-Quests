# Zone: The Southern Plains of Karana (southkarana) >> A_Wild_Turkey (14199)

sub EVENT_SPAWN {
	if ($entity_list->GetClientList()) {
		my $rClient = $entity_list->GetRandomClient($x,$y,$z, 900);
		if ($rClient) {
			quest::attack($rClient->GetName());
		}
		else {
			quest::settimer(1,2); # if we can't find anyone, let's go away
		}
	}
}

sub EVENT_TIMER {
	if ($timer == 1) {
		quest::stoptimer(1);
		quest::depop();
	}
}

# EOF Zone: The Southern Plains of Karana (southkarana) >> A_Wild_Turkey (14199)
