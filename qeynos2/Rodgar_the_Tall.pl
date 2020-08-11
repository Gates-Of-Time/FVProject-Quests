sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings. $name!  You look like you could use some new footwear.");
	}
	elsif ($text=~/treant wood/i) {
		quest::say("What is all this talk of Treant Wood? I can get you some. In about two months, I shall have a new stock. Perhaps I may have some to trade... if you do me a [favor]...");
	}
	elsif ($text=~/favor/i) {
		quest::say("I will be glad to part with some Treant Wood for an Odus Pearl from the waters surrounding Erudin. On second thought... make that four Odus Pearls.");
	}
}

sub EVENT_ITEM {
	#:: Match four 13878 - Pearl of Odus
	if (plugin::takeItems(13878 => 4)) {
		quest::say("Wonderful!! I am sure that was a lot safer than battling a treant.");
		#:: Give item 13824 - Wooden Shards
		quest::summonitem(13824);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(291, 2); 	#:: + Merchants of Qeynos
		quest::faction(223, -1); 	#:: - Circle of Unseen Hands
		quest::faction(219, 1); 	#:: + Antonius Bayle
		quest::faction(229, 1); 	#:: + Coalition of Tradefolk
		quest::faction(262, 1); 	#:: + Guards of Qeynos
		#:: Grant a moderate amount of experience
		quest::exp(2432);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
