sub EVENT_ITEM {
	#:: Match a 13242 - One Quarter of Elixir
	if (plugin::takeItems(13242 => 1)) {
		quest::say("Ahhh!! I feel warm all over. Thanks. You should go give Arnis McLish a drink of this elixir. Last time I saw him he was headed toward Blackburrow.");
		#:: Give a 13243 - One Half of Elixir
		quest::summonitem(13243);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(328, 1); 	#:: Merchants of Halas
		quest::faction(327, 1); 	#:: Shaman of Justice
		quest::faction(311, 1); 	#:: Steel Warriors
		quest::faction(320, 1); 	#:: Wolves of the North
		#:: Grant a small amount of experience
		quest::exp(150);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
