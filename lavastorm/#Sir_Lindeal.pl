sub EVENT_SPAWN {
	plugin::StraightPath(500,600);
}

sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("In the name of the Rainkeeper, I strike at thee!!");
	}
}

sub EVENT_DEATH_COMPLETE {
	quest::say("You will meet your own doom soon enough, my friend.. my influence with the Knights of Thunder is great, and they will not rest until I am avenged!");
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
