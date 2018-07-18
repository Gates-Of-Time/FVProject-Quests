sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello $name, I hope your hunt is going well.");
	}
}

sub EVENT_SIGNAL {
	#:: Signal From Branis Noolright of East Freeport
	if ($signal == 1) {
		quest::say("What kind of girly song was tha? It stank as bas as a troll's breath.");
	}
	#:: Signal From Palana Willin of East Freeport 
	if ($signal == 5) {
		quest::say("Get off the stage, lass! Can't ye see he left because ye can't carry a tune?!");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
