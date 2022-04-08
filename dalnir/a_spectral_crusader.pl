sub EVENT_SAY {
	if($text=~/greenmist/i) {
		quest::say("Mighty was the mist which covered the land. Mighty is the blade wielded by a crusader.");
	}
	elsif($text=~/golin/i) {
		quest::emote("swipes his hand toward his own head in a chopping motion. 'Stuck between crypt and dust.'");
	}
	elsif($text=~/visceral dagger/i) {
		quest::say("Shattered!! Three within the crypt. A master must go. To the [grand forge] they must go. Three become one with the spirit hammer.");
	}
	elsif($text=~/grand forge/i) {
		quest::emote("points to the ground. 'Beyond the doors lies a forge unlike any other.'");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
