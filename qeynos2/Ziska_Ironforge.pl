sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome to our home of the finest jewelers in all of Norrath.");
	}
	elsif ($text=~/tayla/i) {
		quest::say("I know nothing.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
