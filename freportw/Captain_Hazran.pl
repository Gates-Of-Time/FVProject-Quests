sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, citizen! Welcome to the Freeport Militia House. It is time for you to serve the state. You will assist us in our war with [Clan Deathfist] before you are truly accepted into our city. We urge you to be all we command you to be.'");
	}
	elsif ($text=~/Clan Deathfist/i) {
		quest::say("Clan Deathfist are the orcs of the Commonlands. They are a nuisance and Sir Lucan has ordered their extermination. You will go forth into the Commonlands and kill these orcs. Clan Deathfis'st members are known to wear a clan belt. Bring a belt to me as proof of each death and you shall receive your wages and prove your allegiance to Freeport and all that is good.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13916 - Deathfist Slashed Belt x2
	if (plugin::takeItems(13916 => 2 )) {
		quest::say("Good work, warrior. You are good militia material. Beware though, there are some who dare to call us foe. You have performed so well!");
		#:: Give a large amount of xp
		quest::exp(28000);
		#:: Ding!
		quest::ding();
		#:: Create a hash for storing cash - 500 to 900cp
		my %cash = plugin::RandomCash(500,900);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set faction
		quest::faction(330, 5); 		#:: + Freeport Militia
		quest::faction(362, -1); 		#:: - Priests of Marr
		quest::faction(281, -1); 		#:: - Knights of Truth
		quest::faction(336, 1); 		#:: + Coalition of Trade Folk Underground
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}	
