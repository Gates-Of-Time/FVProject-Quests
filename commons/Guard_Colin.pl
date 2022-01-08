sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail traveler. By order of Sir Lucan, the toll fee is one gold piece a head. Pay at once!!");
	}
}

sub EVENT_ITEM {
	#:: Match one gold piece
	if (plugin::takeCoin(0, 0, 1, 0)) {
		quest::say("It is best you donate to the Freeport Militia. I would hate to see something happen to you.");
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("You're not welcome in Freeport.");
	}
}

sub EVENT_DEATH_COMPLETE {
	quest::say("Your name shall be added to the most wanted list of the Freeport Militia!!");
}
