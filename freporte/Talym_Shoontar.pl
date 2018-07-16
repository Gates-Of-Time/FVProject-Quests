sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello $name, I hope your hunt is going well.");
	}
}

sub EVENT_SIGNAL {
	if ($signal == 1) {  	#:: Signal From Branis Noolright of East Freeport
		quest::say("What kind of girly song was tha? It stank as bas as a troll's breath.");
	}
	if ($signal == 5) {		#:: Signal From Palana Willin of East Freeport 
		quest::say("Get off the stage, lass! Can't ye see he left because ye can't carry a tune?!");
	}
}

sub EVENT_ITEM {
	plugin::return_items(\%itemcount);
}
