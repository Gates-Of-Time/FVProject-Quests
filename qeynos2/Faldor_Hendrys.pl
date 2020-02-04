sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("That's it swine! You're outta here!");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("What do you want?! Can't you see I am busy drinking here? You don't even look like you belong here. You can have my seat when I am good and ready to leave, which won't be for a while yet. If I were you, I would get lost before I got myself hurt.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
} 
