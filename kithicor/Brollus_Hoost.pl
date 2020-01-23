sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, friend.");
	}
	elsif ($text=~/battle staff/i) {
		quest::say("I was hired to steal a High Guard battle staff from the High Guard of Erudin. It is a gift for Carson McCabe. I guess he collects weapons.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
