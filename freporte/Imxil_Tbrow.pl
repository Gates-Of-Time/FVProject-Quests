sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("There are No greater circles of magic than those of the Teir'Dal.");
	}
}

sub EVENT_SIGNAL {
	#signal from Branis Noolright in freporte
	if($signal == 2) {
	quest::say("Those halfwit ogres make good pets. If they are housebroken.");
	}
	#signal from Palana Willin in freporte
	elsif ($signal == 4) {
	quest::say("The Teir'Dal cower to no one. We are the only true force to be reckoned with.");
	}
}

sub EVENT_ITEM {
	plugin::return_items(\%itemcount);
}
