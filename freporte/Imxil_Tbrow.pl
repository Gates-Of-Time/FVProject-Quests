sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("There are No greater circles of magic than those of the Teir'Dal.");
	}
}

sub EVENT_SIGNAL {
	#:: Signal from freporte/Branis_Noolright.pl
	if ($signal == 2) {
		quest::say("Those halfwit ogres make good pets. If they are housebroken.");
	}
	#:: Signal from freporte/Palana_Willin.pl
	elsif ($signal == 4) {
		quest::say("The Teir'Dal cower to no one. We are the only true force to be reckoned with.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
