sub EVENT_SAY {   
	if ($text=~/hail/i) {
		quest::say("Hello there, $name. I hope you are faring well this day.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
