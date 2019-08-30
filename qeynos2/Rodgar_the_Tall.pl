sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings. $name!  You look like you could use some new footwear.");
	}
	if ($text=~/treant wood/i) {
		quest::say("What is all this talk of Treant Wood? I can get you some. In about two months, I shall have a new stock. Perhaps I may have some to trade... if you do me a [" . quest::saylink("favor") . "]...");
	}
	if ($text=~/favor/i) {
		quest::say("I will be glad to part with some Treant Wood for an Odus Pearl from the waters surrounding Erudin. On second thought... make that four Odus Pearls.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13878 Pearl of Odus x4
	if (plugin::check_handin(\%itemcount, 13878 => 4)) {
		quest::say("Wonderful!! I am sure that was a lot safer than battling a treant.");
		#:: Give item 13824 - Wooden Shards
		quest::summonitem(13824);
		#:: Give a small amount of xp
		quest::exp(2432);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(291,10); 	#:: + Merchants of Qeynos
		quest::faction(223,10); 		#:: + Circle of Unseen Hands
		quest::faction(219,10); 		#:: + Antonius Bayle
		quest::faction(229,10); 		#:: + Coalition of Tradefolk
		quest::faction(262,10); 	#:: + Guards of Qeynos
	}
	plugin::return_items(\%itemcount);
}
