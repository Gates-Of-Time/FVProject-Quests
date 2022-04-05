sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Glad to see you made it to the outpost in one piece. Now you can test your mettle against the giants of Kunark. They sometimes carry some [odd items] which can fetch a coin or two on the market.");
	}
	elsif ($text=~/odd items/i) {
		quest::say("I once spoke with a ranger who tried to sell me a mountain giant toothpick he recovered. Looked like it would make a fine weapon, but it smelled of decayed flesh!! I do not even care to think of what kind of flesh it was used to pick.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
