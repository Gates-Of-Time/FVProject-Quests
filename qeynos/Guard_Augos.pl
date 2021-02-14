sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Yeah, my name is Augos... Listen up! Kane says I don't have to talk to none of you peons if I don't feel like it. I DON'T feel like it. So unless you want trouble, get a move on!");
	}
}

sub EVENT_COMBAT {
	if ($combat_state == 1) {
		quest::say("Time to die $name");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
