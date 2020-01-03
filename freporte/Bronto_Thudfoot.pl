sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("How ya doin' bub. Seeing as you just joined the conversation, I think you need to buy us a round.");
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal "1" from /freporte/Lenka_Stoutheart.pl
	if ($signal == 1) {
		quest::say("You said it, boss!  Stay clear of taking sides and you should be just fine, young one.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
