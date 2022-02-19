sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Looking for a challenging fray?  Perhaps there is a combatant waiting for a duel within the Gauntlet.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
