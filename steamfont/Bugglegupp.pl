sub EVENT_AGGRO {
	quest::say("Come here and fill my belly with your tasty flesh.");
	#:: Create a scalar variable to store the plural race name
	$raceplural = "${race}s";
	quest::say("$raceplural like you are better left dead than alive.");
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
