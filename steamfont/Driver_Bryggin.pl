sub EVENT_SPAWN {
	#:: Create a timer 'depop' that triggers every 45 seconds
	quest::settimer("depop", 45);
}

sub EVENT_TIMER {
	#:: Match the timer 'depop'
	if ($timer eq "depop") {
		#:: Stop the timer 'depop'
		quest::stoptimer("depop");
		#:: Depop
		quest::depop();
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
