sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings! Keep an eye out for invaders. We may patrol the outpost, but every now and then a goblin or two manages to sneak in.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
