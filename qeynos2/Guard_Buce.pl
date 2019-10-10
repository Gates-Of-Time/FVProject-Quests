sub EVENT_AGGRO {
	quest::say("Time to die, $name.");
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, citizen! While I have taken an oath to protect you, that does not mean I have to waste my breath talking to you.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
