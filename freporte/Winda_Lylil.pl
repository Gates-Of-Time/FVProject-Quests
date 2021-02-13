sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Hello $name, you wouldn't happen to be [a baker] yourself or maybe you know someone who bakes?"); 
	}
	elsif ($text=~/a baker/i) {
		quest::say("Well good! Maybe you can help me restock. If you are a baker you could help me out by restocking my [muffin supply].");
	}
	elsif ($text=~/muffin supply/i) {
		quest::say("Thanks, you're a pal. Take this crate and fill it with muffins, then seal it up and bring the Full Muffin Crate back to me. Don't go trying to pass off that store bought stuff on me either, I need fresh baked muffins. The ones in the stores are already too old and will get moldy too fast, so I don't want those.");
		#:: Give a 17881 - Muffin Crate
		quest::summonitem(17881);
	}
}

sub EVENT_ITEM {
	#:: Match 1839 - Full Muffin Crate
	if (plugin::takeItems(1839 => 1)) {
		quest::say("Ah yes! This is exactly what I am looking for, dear. Let me put these on the shelf right away. Here is some coin for your trouble. Perhaps we can do business again sometime.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(281, -1);		#:: - Knights of Truth
		quest::faction(330, 2); 		#:: + Freeport Militia
		quest::faction(336, 1);			#:: + Coalition of Tradefolk Underground
		quest::faction(362, -1);		#:: - Priests of Marr
		#:: Grant a moderate amount of experience
		quest::exp(1000);
		#:: Create a hash for storing cash - 500 to 750cp
		my %cash = plugin::RandomCash(500,750);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: East Freeport >> Winda Lylil (10062), restock 13014 - Muffin, quantity 20
		quest::MerchantSetItem(10062, 13014, 20);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
