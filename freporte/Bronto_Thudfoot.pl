#:: Match a signal "1" from /freporte/Lenka_Stoutheart.pl
sub EVENT_SIGNAL {
	if ($signal == 1) {
		quest::say("You said it, boss!  Stay clear of taking sides and you should be just fine, young one.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
