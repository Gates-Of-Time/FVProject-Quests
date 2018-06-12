sub EVENT_ITEM {
	#:: Match 13894 - Useless Cloth Cap
	if (plugin::check_handin(\%itemcount, 13894 => 1)) {
		quest::say("Good work, you should be running this operation instead of that Talrigar fellow. Have a small reward. A little bit of the gems I found while tunneling through this rock.");
		#:: Give a random reward: 10015 - Malachite, 10016 - Lapis Lazuli, 10017 - Turquoise, 10018 - Hematite
		quest::summonitem(quest::ChooseRandom(10015,10016,10017,10018));
	}
	#:: Return Unused Items
	plugin::return_items(\%itemcount);
}
