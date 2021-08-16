sub EVENT_SAY {
	if ($text=~/Hail/i) {
		quest::say("Hello. I am the guild master.");
	}
}

sub EVENT_ITEM {
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Shadowknight');
	#:: Return unused items
	plugin::returnUnusedItems();
}
