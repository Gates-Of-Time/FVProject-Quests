sub EVENT_AGGRO {
	quest::say("Time to die, $name!");
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, $name. You'd better not be in Qeynos to start trouble. Commander Kane has little patience for ruffians. If he were in charge of Qeynos, things would be much better.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
