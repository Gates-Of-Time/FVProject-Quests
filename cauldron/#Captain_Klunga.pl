# Zone: Dagnor's Cauldron (cauldron) >> #Captain Klunga (70072)

sub EVENT_SPAWN {

	$npc->SetAppearance(1);
}

sub EVENT_ITEM {
	#:: Match a 12278 - Abandoned Orc Shovel
	if (plugin::check_handin(\%itemcount, 12278 => 1)) {
		$npc->SetAppearance(0);
		quest::moveto(-395.87, 807.04, 70.53, 0, 1);
	}
	plugin::return_items(\%itemcount);
}

sub EVENT_WAYPOINT_ARRIVE {

	quest::creategroundobject(12274, $x, $y, $z, $h);
}

sub EVENT_SIGNAL {
	if ($entity_list->GetClientList()) {
		my $rClient = $entity_list->GetRandomClient($x,$y,$z, 200);
		if ($rClient) {
			quest::attack($rClient->GetName());
		}
		else {
			quest::depop();
		}
	}
}
# EOF Zone: Dagnor's Cauldron (cauldron) >> #Captain Klunga (70072)
