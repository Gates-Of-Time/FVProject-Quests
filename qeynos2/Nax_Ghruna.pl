sub EVENT_AGGRO {
	quest::say("That's it swine! You're outta here!");
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
	quest::say("My comrades will avenge my death.");
}
