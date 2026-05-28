sub EVENT_ITEM {
	#:: Match a 6883 - Rabbit Foot
	if (plugin::takeItems(6883 => 1)) {
		quest::say("Oh wow! A rabbits foot!! Thank you so much. Here take this, I won't need this smelly thing any more.");
		#:: Give a 3190 - Ivy Etched Gauntlets
		quest::summonitem(3190);
		#:: Set factions
		quest::faction(391, 51);	#:: + New Combine
		#:: Grant a tiny amount of experience
		quest::exp(100);
	}
	else {
		quest::say("I have no interest in this.");
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}
