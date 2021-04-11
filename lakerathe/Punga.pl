sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Gimme duffynitey rocks! Me grindem GUUD!!!");
	}
}

sub EVENT_ITEM {
	#:: Match a 10073 - Dufrenite
	if(plugin::takeItems(10073 => 1)) {
		quest::emote("takes the dufrenite and grinds it with her bare hands.");
		quest::say("Here ya go!");
		#:: Give a 19051 - Ground Dufrenite
		quest::summonitem(19051);
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
