sub EVENT_ITEM_CLICK_CAST {
	if ($itemid == 11668) {
		$client->CastSpell(1824, 0, 10, 0, 0);
		$client->NukeItem(11668);
		quest::summonitem(11669);
	}
	elsif ($itemid == 11669) {
		$client->CastSpell(1823, 0, 10, 0, 0);
		$client->NukeItem(11669);
		quest::summonitem(11668);
	}
}
