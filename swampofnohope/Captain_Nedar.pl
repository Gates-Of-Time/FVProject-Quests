sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Come to serve the garrison? Good. I aim to offer a reward for the return of four froglok tad tongues. Best if we handle the pesky critters before they grow too big and too numerous.");
	}
}

sub EVENT_ITEM {
	#:: Match four 12439 - Froglok Tad Tongue
	if (plugin::takeItems(12439 => 4)) {
		quest::say("Well done. It is good to serve the Warlord. Here is a small reward befitting such a small task.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 1);		#:: + Legion of Cabilis
		quest::faction(440, 1);		#:: + Cabilis Residents
		quest::faction(445, 1);		#:: + Scaled Mystics
		quest::faction(442, 1);		#:: + Crusaders of Greenmist
		quest::faction(444, 1);		#:: + Swifttails
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Create a hash for storing cash - 1 to 20cp
		my %cash = plugin::RandomCash(1, 20);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match three 12439 - Froglok Tad Tongue
	elsif (plugin::takeItems(12439 => 3)) {
		quest::say("There shall be no coins for you until I have four of these.");
		#:: Give three 12439 - Froglok Tad Tongue
		quest::summonitem(12439);
		quest::summonitem(12439);
		quest::summonitem(12439);
	}
	#:: Match two 12439 - Froglok Tad Tongue
	elsif (plugin::takeItems(12439 => 2)) {
		quest::say("There shall be no coins for you until I have four of these.");
		#:: Give two 12439 - Froglok Tad Tongue
		quest::summonitem(12439);
		quest::summonitem(12439);
	}
	#:: Match a 12439 - Froglok Tad Tongue
	elsif (plugin::takeItems(12439 => 3)) {
		quest::say("There shall be no coins for you until I have four of these.");
		#:: Give a 12439 - Froglok Tad Tongue
		quest::summonitem(12439);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
