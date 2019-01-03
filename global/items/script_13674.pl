sub EVENT_ITEM_CLICK_CAST {
		#:: Match if Item ID 11668 - Vibrating Gauntlets of Infuse
		if ($itemid == 11668) {
			#:: Cast 1824 - Transmute Hammer on self (0), 10 second cast time
			$client->CastSpell(1824, 0, $slotid, 0, 0);
			#:: Summon a 11669 - Vibrating Hammer of Infuse
			quest::summonitem(11669);
		}
		#:: Match if Item ID 11669 - Vibrating Hammer of Infuse
		elsif ($itemid == 11669) {
			$client->CastSpell(1823, 0, $slotid, 0, 0);
			#:: Summon a 11668 - Vibrating Gauntlets of Infuse
			quest::summonitem(11668);
		}
	}
}
