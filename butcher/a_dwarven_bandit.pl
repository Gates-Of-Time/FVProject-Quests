sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("The blades of the Butcherblock Bandits do not discriminate!!");
	}
}

sub EVENT_DEATH_COMPLETE {
	quest::say("You shall soon feel the daggers of the Butcherblock Bandits upon your back!!");
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
