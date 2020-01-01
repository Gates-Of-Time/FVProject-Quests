sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, $name! I am sorry but this table has a hundred platinum minimum. Maybe you should start on the copper tables.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
