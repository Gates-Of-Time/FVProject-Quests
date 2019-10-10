sub EVENT_AGGRO {
	quest::say("Time to die, $name!");
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, $name.  If you are not busy, we can always use help keeping the beetle population under control in front of the gates.  But be careful, we have had sightings of a large queen beetle out there.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
