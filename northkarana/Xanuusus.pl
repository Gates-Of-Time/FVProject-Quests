sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, small one! I am Xanuusus of the Stormreapers. You are welcome to rest beneath my mighty branches.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13411 - Case of Jumjum Juice
	if (plugin::takeItems(13411 => 1 )) {
		quest::say("Heh heh! Excellent, small one!  My roots have been longing for some fresh jumjum juice!  Thank you!  Take this for your trouble.  Be sure to thank the Tagglefoots for me.");
		#:: Randomly choose a 13977 - carrot, 84004 - fishing pole, or 13083 - pine needles
		quest::summonitem(quest::ChooseRandom(13977,84004,13083));
		#:: Give a small amount of xp
		quest::exp(500);
		#:: Ding!
		quest::ding();	
		#:: Create a hash for storing cash - 4500 to 4600cp
		my %cash = plugin::RandomCash(900,2000);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
