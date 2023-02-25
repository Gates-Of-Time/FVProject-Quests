sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("Now you shall know the skill of a member of the Bloodforge Brigade!!");
	}
}

sub EVENT_NPC_SLAY {
	quest::say("Yet another victory for Kaladim and the Bloodforge Brigade!");
}

sub EVENT_SLAY {
	quest::say("Yet another victory for Kaladim and the Bloodforge Brigade!");
}

sub EVENT_DEATH_COMPLETE {
	quest::say("My brothers of the Stormguard shall avenge me!! Your days are numbered!");
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
