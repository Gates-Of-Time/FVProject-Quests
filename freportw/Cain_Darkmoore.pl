sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, $name We are the Steel Warriors of Freeport. Our training disciplines have created some of the finest warriors ever to walk upon Norrath. Perhaps the bards shall sing songs of you one day. Let your first mission be the extermination of [" . quest::saylink("Clan Deathfist") . "].");
	}
	elsif ($text=~/Clan Deathfist/i) {
		quest::say("The orcs of the Commonlands call themselves Clan Deathfist. They have committed many vile acts upon the residents of the Commonlands as well as persons traveling to and from Freeport. They must be destroyed. Go forth to slay them. I shall pay a bounty for every two Deathfist belts. If you are a true warrior of the bunker. perhaps you can begin with [" . quest::saylink("the green and blue") . "].");
	}
	elsif ($text=~/bigger problem/i) {
		quest::say("The bigger problem is the Freeport Militia. Go to the Hall of Truth and speak with the Knights of Truth about that. They have already started their campaign to rid the city of the militia. The so-called Freeport Militia is not to be trusted.");
	}
	elsif ($text=~/the green and blue/i) {
		quest::say("The green and blue was a test for all skilled warriors. All one needed do was return to me four orc legionnaire shoulderpads. Two from the loathsome green skinned Deathfist Clan and two from the vile blue skinned Crushbone Clan. But we have no more bunker battle blades to spare. We must prepare for war!!");
	}	
}

sub EVENT_ITEM {
	#:: Turn in for 13916 x2 - Deathfist Slashed Belt x2
	if (plugin::takeItems(13916 => 2 )) {
		quest::say("Very fine work $name. With your help, we shall soon rid the commonlands of the orcs. Then we can move on to a [" . quest::saylink("bigger problem") . "].");
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Create a hash for storing cash - 4500 to 4600cp
		my %cash = plugin::RandomCash(900,2000);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set faction
		quest::faction(105,-1); 		#:: - Freeport Militia
		quest::faction(311,1); 			#:: + Steel Warriors
		quest::faction(184,1); 			#:: + Knights of Truth
	}
	#:: Turn in for 18742 - A Tattered Note
	if (plugin::takeItems(18742 => 1 )) {
		quest::say("Welcome to the Steel Warriors, young warrior. It is time to prove your mettle. Look to the outskirts of Freeport and join the fray. Show Clan Deathfist what a warrior of the bunker can do.");
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Ding!
		quest::ding();
		#:: Give item 13572 - Dirty Training Tunic
		quest::summonitem(13572);
		#:: Set faction
		quest::faction(105,-15); 		#:: - Freeport Militia
		quest::faction(311,100); 		#:: + Steel Warriors
		quest::faction(53,-15); 		#:: - Corrupt Qeynos Guards
		quest::faction(135,20); 		#:: + Guards of Qeynos
		quest::faction(184,1); 			#:: + Knights of Truth
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}	
