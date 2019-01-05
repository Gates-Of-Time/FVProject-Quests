sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("rustles and looks up at you in acknowledgment.");
		#:: Signal Reebo_Leafsway in Rivervale
		quest::signalwith(19052, 1, 0); 
	}
} 

sub EVENT_ITEM {
	#:: Turn in for 14321 - Sack of Writhing Hay
	if (plugin::takeItems(14321 => 1 )) {
		quest::emote("shakes his head around and beams a smile at you");
		#:: Give item 13980 - Wee Harvester or 14031 - Belt of the River
		quest::summonitem(quest::ChooseRandom(13980, 13980, 14031));
		#:: Give a small amount of xp
		quest::exp(500);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(316, 10);	#:: + Storm Reapers
		quest::faction(208, 1);		#:: + Mayor Gubbin
		quest::faction(218, 1);		#:: + Merchants of Rivervale
		quest::faction(347, -1);	#:: - Unkempt Druids
		quest::givecash(1,1,5,4);	#:: Give a small amount of cash copper - plat
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
