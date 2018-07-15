sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello. It is good to meet you. Try not to scare the fish away. This is A good spot I supply fish to the Grub N' Grog. The patrons there love me!");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13922 -  Snapped Pole
	if (plugin::check_handin(\%itemcount, 13922 => 1)) {
		quest::say("Great! Thank you stranger. The rogues must have broken it. At least I could repair it. It would be seasons before I could afford another pole.");
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(105,1); 		#:: + Freeport Militia
		quest::faction(48,1); 		#:: + Coalition of Tradefolk Underground
		quest::faction(184,-1); 	#:: - Knights of Truth
		quest::faction(258,-1); 	#:: - Priests of Marr
		quest::givecash(50,0,0,0);	#:: Give a small amount of cash copper - plat
	}
	plugin::return_items(\%itemcount);
}
