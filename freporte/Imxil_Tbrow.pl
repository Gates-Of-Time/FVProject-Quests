sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("There are No greater circles of magic than those of the Teir'Dal.");
	}
}

sub EVENT_SIGNAL {
	#:: Match signal '1' from /freporte/Branis_Noolright.pl
	if ($signal == 1) {
		quest::say("Those halfwit ogres make good pets. If they are housebroken.");
	}
	#:: Match signal '2' from freporte/Palana_Willin.pl
	elsif ($signal == 2) {
		quest::say("The Teir'Dal cower to no one. We are the only true force to be reckoned with.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
