sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("May the Truthbringer guide your path. I am Celsar Vestagon, upholder of the faith and cleric of Mithaniel Marr. Did you come to see the [" . quest::saylink("minnows of marr") . "]?");
	}
	if ($text=~/minnows of marr/i) {
		quest::say("The Marr Minnow is unique to the Hall of Truth. It is a beautiful fish. Unfortunately, recently, reports of piranha have been heard. Due to greater concerns, I must look for assistance from noble clerics who wish to help Marr and [" . quest::saylink("eradicate the piranha") . "].");
	}
	if ($text=~/eradicate the piranha/i) {
		quest::say("Yes. You are new to the word of Marr. Go to the waters surrounding the Hall of Truth. Fill this sack with no fewer than four dead piranha. You'd best keep well fed. I do not want you to eat the fish before you fill the sack and combine it. May Marr be with you.");
		#:: Give a 17936 - Empty Fish Sack
		quest::summonitem(17936); 
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13872 - Sack of Piranha
	if (plugin::takeItems(13872 => 1 )) {
		quest::say("You have done well. The Marr Minnow shall have a greater chance of flourishing. Please take this as a reward.");
		#:: Give a small amount of xp
		quest::exp(200);
		#:: Ding!
		quest::ding();
		#:: Create a hash for storing cash - 20 to 25cp
		my %cash = plugin::RandomCash(20,25);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(281,1); 		#:: + Knights of Truth
		quest::faction(362,-1); 	#:: - Priests of Marr
		quest::faction(330,-1); 	#:: - Freeport Militia
		quest::faction(271,1); 		#:: + Dismal Rage
		quest::faction(311,1); 		#:: + Steel Warriors
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
