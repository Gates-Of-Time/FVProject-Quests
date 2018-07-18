sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hey, hello there, $name. It's been so busy around here lately! Barely time to eat and sleep, let alone have any fun. Oh well, it keeps me employed. But, I really could use someone to [" . quest::saylink("help") . "] me out around here.");
	}
	if ($text=~/help/i) {
		quest::say("Yea and if you can help me out with A few things that'd be great. Geez and where do we Start? I need someone to run over to [" . quest::saylink("Janam and Rebby's") . "]? Can you do that for me?");
	}
	if ($text=~/janam and rebby/i) {
		quest::say("Janam and Rebby are A couple of merchants working the area around the Theater of the Tranquil and the Ashen Order, in West Freeport. It's part of my job to keep tabs on those two rascals. I need someone to take this note to Rebby for me. Don't worry, your efforts won't go unnoticed $name");
		#:: Give item 18923 - Message to Rebby
		quest::summonitem(18923);
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13158 -  Rebby's Rat Whiskers
	if (plugin::check_handin(\%itemcount, 13158 => 1)) {
		quest::say("Thank you $name, You have done well.");
		#:: Give a small amount of xp
		quest::exp(500);
		#:: Give a small amount of cash copper - plat
		quest::givecash(7,0,0,0);
		#:: Ding!
		quest::ding();
		#:: Set faction	
		quest::faction(48,7); 		#:: + Coalition of Tradefolk Underground
		quest::faction(47,7); 		#:: + Coalition of Trade Folk
		quest::faction(31,1); 		#:: + Carson McCabe
		quest::faction(53,1); 		#:: + Corrupt Qeynos Guards
		quest::faction(105,1); 		#:: + Freeport Militia			
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
