sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello there $class! You'll be happy to see that I am fully stocked with all my usual goods. Have a look around, $name");
	}
}

sub EVENT_ITEM {
	plugin::return_items(\%itemcount);
}
