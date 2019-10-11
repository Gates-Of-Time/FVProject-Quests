sub EVENT_AGGRO {
	quest::say("Time to die, $name!");
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello, $name! My name is Rashik Hiccs and I would like to welcome you to Qeynos on behalf of all the guards. If you get into trouble, just find one of us and we will help you out.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
