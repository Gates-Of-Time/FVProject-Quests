sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, $Name! We are the Militia of Freeport. Our training disciplines have created some of the finest guards ever to walk upon Norrath. To prove your loyalty and ability your first mission is to be the extermination of [" . quest::saylink("Clan Deathfist") . "].");
	}
	elsif ($text=~/Clan Deathfist/i) {
		quest::say("The orcs of the Commonlands call themselves Clan Deathfist. They have committed many vile acts upon the residents of the Commonlands as well as persons traveling to and from Freeport. They must be destroyed. Go forth to slay them. I shall pay a bounty for every two Deathfist belts.");
	}
	elsif ($text=~/bigger problem/i) {
		quest::say("The bigger problem is the Freeport Militia. Go to the Hall of Truth and speak with the Knights of Truth about that. They have already started their campaign to rid the city of the militia. The so-called Freeport Militia is not to be trusted.");
	}	
}

sub EVENT_ITEM {
	#:: Turn in for 13916 x2 - Deathfist Slashed Belt x2
	if (plugin::takeItems(13916 => 2 )) {
		quest::say("Very fine work $name. With your help, we shall soon rid the commonlands of the orcs. Then we can move on to a [" . quest::saylink("bigger problem") . "].");
		#:: Give a small amount of xp
		quest::exp(28000);
		#:: Ding!
		quest::ding();
		#:: Create a hash for storing cash - 4500 to 4600cp
		my %cash = plugin::RandomCash(900,2000);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set faction
		quest::faction(105,5); 			#:: + Freeport Militia
		quest::faction(258,-1); 		#:: - Priests of Marr
		quest::faction(184,-1); 		#:: + Knights of Truth
		quest::faction(48,1); 			#:: + Coalition of Trade Folk Underground
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}	
