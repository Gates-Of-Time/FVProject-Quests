sub EVENT_ITEM {
	#:: Match for 12278 - Abandoned Orc Shovel
	if (plugin::check_handin(\%itemcount, 12278 => 1)) {
		quest::ding();
	}
	plugin::return_items(\%itemcount);
}
