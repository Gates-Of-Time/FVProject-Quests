sub EVENT_ITEM {
	#:: Match item 18901 - Ragged Cloth Note
	if (plugin::check_handin(\%itemcount, 18901 => 1)) {
		quest::say("I.. but.. she.. You can take this. I guess I don't need it any more.");
		#:: Give item 14640 - Silver Amber Ring
		quest::summonitem(14640);
		#:: Give  xp
		quest::exp(30000);
		#:: Ding!
		quest::ding();
	}
	plugin::return_items(\%itemcount);
}
