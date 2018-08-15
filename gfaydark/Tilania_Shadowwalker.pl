sub EVENT_SAY { 
	if ($text=~/Hail/i) {
		quest::say("Greetings to you $name. I welcome you to the Scouts of Tunare training halls. I have seen many scouts pass through my halls with unimaginable abilities and daggers guided by Tunare herself.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
