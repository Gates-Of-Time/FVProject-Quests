sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello there, adventurer! I am sure you are thirsty after that long boat ride from Qeynos!");
	}
}

sub EVENT_SIGNAL {
	#:: Match signal "1" from /erudnext/Phloatin_Highbrow.pl
	if ($signal == 1) {
		quest::say("Pipe down, Phloatin! Treat the new clientele with respect.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
