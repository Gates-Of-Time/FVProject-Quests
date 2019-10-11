sub EVENT_AGGRO {
	quest::say("Time to die, $name!");
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, $name.  If you are looking for the way to South Qeynos, the passage through the city wall south of the cobbler's shop leads to the Merchant's Square near the Clock of Ak'Anon.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
