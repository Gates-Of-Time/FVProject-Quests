sub EVENT_ITEM {
	#:: Turn in of Large Crate of Mining Supplies 19930 for Rogue Errands Quest - spawned by Rigg_Nostra
	if (plugin::check_handin(\%itemcount, 19930 => 1)) {
		#:: Give item 19918 - Rough Blue Gem
		quest::summonitem(19918);
		quest::say("Arg");
		#:: Ding!
		quest::ding();
		#:: Set Depop Timer
		quest::settimer("depop",5);
	}
	plugin::return_items(\%itemcount);
}
