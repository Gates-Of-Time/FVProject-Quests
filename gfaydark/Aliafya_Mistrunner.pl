sub EVENT_SAY {
	if ($text=~/Hail/i) {
		quest::say("Pleased to meet you, $name, I am Aliafya Mistrunner Preserver of Nature and loyal servant of Tunare. I have resided in this guild house for many of my years. I pride myself on being a mentor to many young druids of Tunare that come up through our ranks.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
