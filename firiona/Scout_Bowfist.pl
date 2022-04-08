sub EVENT_WAYPOINT_ARRIVE {
	if ($wp == 8) {
		#:: Run
		quest::SetRunning(1);
	}
	elsif ($wp == 16) {
		#:: Walk
		quest::SetRunning(0);
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Halt!! This tunnel is used primarily for the forces of the Union of Vie. Citizens and adventurers are to use the main entrance.");
	}
	elsif ($text=~/union of vie/i) {
		quest::say("The Union of Vie was formed by the rulers of the Koada Dal and the Feir Dal. It is the army which defends the outpost of Firiona Vie from the hostile denizens of Kunark. When Kelethin and Felwithe combine forces, all can be conquered.");
	}
	elsif ($text=~/dale/i) {
		quest::say("Dune is my trusty canine. I rescued him from the harsh deserts of Antonica. I now have heard word that the realm he once pranced has been defiled.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
