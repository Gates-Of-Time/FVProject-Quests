sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("For the glory of Kaladim, have at thee!!");
	}
}

sub EVENT_NPC_SLAY {
	quest::say("For the glory of Kaladim!! You are no more.");
}

sub EVENT_SLAY {
	quest::say("For the glory of Kaladim!! You are no more.");
}

sub EVENT_DEATH_COMPLETE {
	quest::say("My brothers of the Stormguard shall avenge me!! Your days are numbered!");
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
