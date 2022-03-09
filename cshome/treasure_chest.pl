sub EVENT_DEATH_COMPLETE {
	my $randomspell = quest::ChooseRandom(30, 119, 206, 214, 2320, 3647, 20124..20139, 21501..21505, 21951, 24013..24016, 24069..24072, 39536..39539);
	$npc->CastSpell($randomspell, $npc->GetID());
	Treasure();
}

sub Treasure {
	my @clist = $entity_list->GetClientList();
	foreach my $c (@clist) {
		#:: 17403 - Bag of the Tinkerers, 87562 - Big 'Sploder Fireworks, 17571 - Bat on a String, 43935 - Dried Frog Leg
		my $randomgift = quest::ChooseRandom(87562, 87562, 17403, 87562, 87562, 17571, 87562, 87562, 43935, 87562, 87562);
		$c->SummonItem($randomgift);
		$c->Message(15, "You received a gift!");
		$c->SendSound();
		$c->DoAnim(27);
	}
}
