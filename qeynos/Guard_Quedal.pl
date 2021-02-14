sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("<Burp!> Heh? $name? Never hoid o' ya. Beat it. I got woik ta do.");
	}
}

sub EVENT_COMBAT {
	if ($combat_state == 1) {
		quest::say("Time to die $name!");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
