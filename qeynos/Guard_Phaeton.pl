sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, $name! What brings you to the docks? Come to visit ol' Captain Rohand and do some fishing? I plan on doing that when I can get a day off.");
	}
}

sub EVENT_SIGNAL {
	#:: Match signal "1" from qeynos/Lieutenant_Arathur.pl
	if ($signal == 1) {
		quest::say("Yes, sir!");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
