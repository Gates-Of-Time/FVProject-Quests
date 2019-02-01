sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, $name, I am the guild master.");
	}
}

sub EVENT_ITEM {
	#:: plugin::try_tome_handins(\%itemcount, $class, "Rogue");
	#:: Return unused items
	plugin::returnUnusedItems();
}
