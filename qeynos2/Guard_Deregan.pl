sub EVENT_AGGRO {
	quest::say("Time to die, $name!");
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, $name.  I am Deregan. I used to be an adventurer much like yourself. Of course I was not as frail and childlike as you appear to be.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
