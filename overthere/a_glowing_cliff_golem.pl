sub EVENT_SPAWN {
	#:: Create a timer 'Depop' that triggers every 640 seconds
	quest::settimer("Depop", 640);
	#:: Start pathing grid 274
	quest::start(274);
}

sub EVENT_TIMER {
	#:: Match timer 'Depop'
	if ($timer eq "Depop") {
		quest::depop();
	}
}

sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::stoptimer("Depop");
	}
	elsif ($combat_state == 0) {
		#:: Create a timer 'Depop' that triggers every 640 seconds
		quest::settimer("Depop", 640);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
