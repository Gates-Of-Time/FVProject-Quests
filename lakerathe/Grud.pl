sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Gimme duffynitey rocks! Me crushem GUUD!!!");
	}
}

sub EVENT_ITEM {
	#:: Match a 10073 - Dufrenite
	if (plugin::takeItems(10073 => 1)) {
		quest::emote("takes the dufrenite and crushes it with his bare hands.");
		quest::say("Here ya go!");
		#:: Give a 19050 - Crushed Dufrenite
		quest::summonitem(19050);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
