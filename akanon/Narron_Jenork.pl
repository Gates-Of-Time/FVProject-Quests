sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Come to train? You really should. The way of the warrior is all but abandoned within our grand city. We must build an army of warriors. We may need them should anything happen to all the clockworks. Thank the Underfoot we have the [Watchmen].
	}
	elsif ($text=~/watchmen/i) {
		quest::say("The Watchmen are the elite of the Gemchoppers. It is not my duty to oversee their operations, but I can command them when in the name of Ak'Anon. I have done so with Watchman [Dexlin].
	}
	elsif ($text=~/dexlin/i) {
		quest::say("Oh my!! I sent Watchman Dexlin towards the great Human city of Qeynos on the continent of Antonica. He was on a secret mission, but I have yet to hear word of his progress. Manik shall be quite upset if anything happened to one of his Watchmen. Should you find yourself near Qeynos and happen upon Watchman Dexlin, aid him in any way you can.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
