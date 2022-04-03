sub EVENT_SPAWN {
	#:: Create a timer 'Depop' that triggers every 90 seconds
	quest::settimer("Depop", 90);
}

sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::stoptimer("Depop");
		quest::say("Good, your sense of timing is correct. Now begin! Show me that your training has not been wasted.");
	}
	elsif ($combat_state == 0) {
		#:: Create a timer 'Depop' that triggers every 90 seconds
		quest::settimer("Depop", 90);
	}
}

sub EVENT_TIMER {
	#:: Match timer 'Depop'
	if ($timer eq "Depop") {
		quest::stoptimer("Depop");
		#:: Depop without spawn timer active
		quest::depop();
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
	quest::say("Your ability is strong, may you serve Cazic Thule with all your might.");
}
