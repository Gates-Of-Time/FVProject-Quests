sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Gimme duffynitey rocks! Me powdrem GUUD!!!");
	}
}

sub EVENT_ITEM {
	#:: Match a 10073 - Dufrenite
	if (plugin::takeItems(10073 => 1)) {
		quest::emote("takes the dufrenite and smashes it with his bare hands.");
		quest::say("Here ya go!");
		#:: Give a 19052 - Powdered Dufrenite
		quest::summonitem(19052);
		#:: Ding!
		quest::ding();
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
