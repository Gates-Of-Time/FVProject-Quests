sub EVENT_ITEM_CLICK_CAST {
	if (!$client->EntityVariableExists("vib_time") || plugin::GetTimeLeft($client->GetEntityVariable("vib_time"), "S") == 0) {
		#:: Match if Item ID 11668 - Vibrating Gauntlets of Infuse
		if ($itemid == 11668) {
			#:: Cast 1824 - Transmute Hammer on self (0), 10 second cast time
			$client->CastSpell(1824, 0, $slotid, 0, 0);
			#:: Delete from inventory a 11668 - Vibrating Gauntlets of Infuse
			$client->NukeItem(11668);
			my $EndTime = plugin::GetEndTime("S5");
			$client->SetEntityVariable("vib_time", $EndTime);
			#:: Summon a 11669 - Vibrating Hammer of Infuse
			quest::summonitem(11669);
		}
		#:: Match if Item ID 11669 - Vibrating Hammer of Infuse
		elsif ($itemid == 11669) {
			$client->CastSpell(1823, 0, $slotid, 0, 0);
			#:: Delete from inventory a 11669 - Vibrating Hammer of Infuse
			$client->NukeItem(11669);
			my $EndTime = plugin::GetEndTime("S5");
			$client->SetEntityVariable("vib_time", $EndTime);
			#:: Summon a 11668 - Vibrating Gauntlets of Infuse
			quest::summonitem(11668);
		}
	}
	else {
		$client->Message(13, "Item recast time not yet met.");
	}
}
