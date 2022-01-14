sub EVENT_ITEM {
	#:: Match a 13241 - Full Bottle of Elixir
	if (plugin::takeItems(13241 => 1)) {
		quest::say("Mmmm.. I feel much warmer. Thank you. You should now find Bryndin McMill. He could use a swig also. I saw him hanging around two other guards.");
		#:: Give 13242 - One Quarter of Elixir
		quest::summonitem(13242);
		#:: Ding!
		quest::ding();
		#:: Set Factions
		quest::faction(328, 1);		#:: Merchants of Halas
		quest::faction(327, 1);		#:: Shaman of Justice
		quest::faction(311, 1);		#:: Steel Warriors
		quest::faction(320, 1);		#:: Wolves of the North
		#:: Grant a small amount of experience
		quest::exp(150);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
