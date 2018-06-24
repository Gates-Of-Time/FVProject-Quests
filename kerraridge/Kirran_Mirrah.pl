sub EVENT_ITEM {
	#:: Match a 9968 - Smelly Sealed Bag
	if (plugin::check_handin(\%itemcount, 9968 => 1)) {
		quest::say("How dare you bring me this! You shall pay for what you have done!!");
		quest::attack($name);
		#:: Give a 9967 - Karran's Head
		quest::summonitem(9967);
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
