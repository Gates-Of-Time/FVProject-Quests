sub EVENT_SAY {
	if ($text=~/Hail/i) {
		quest::say("Pleased to meet you $name. I am Sarialiyn Tranquilsong. Virtuoso of the Songweavers Kelethin division. I have spent all of my years here in Kelethin training our new recruits to ensure that all are ready to defend themselves once their adventures take them away from the Faydark and beyond.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
