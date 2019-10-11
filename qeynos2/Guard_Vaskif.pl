sub EVENT_AGGRO {
	quest::say("Time to die, $name!");
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Good evening to you, $name. Beware. We have had reports of the undead prowling about on the plains just North of there. Evil is growing here in Qeynos, I can sense it.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
