sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Many frogloks in here. Beware! They can be a sneaky bunch. I hear tales of a froglok village nearby.");
	}
	elsif ($text=~/restraining order/i) {
		quest::say("I have been expecting this. Oh, well... Can't argue with the Baron or he will have both our heads. Keeping that in mind, I will make you a deal. I will sign the order if you bring me one of those grand skipping stones these Frogloks are said to have. Bring me the stone and the order and I shall sign.");
	}
}

sub EVENT_ITEM {
	#:: Match a 18243 - Legion Order, and a 12425 - Skipping Stone
	if (plugin::takeItems(18243 => 1, 12425 => 1)) {
		quest::say("So smooth. I shall be the skipping stone champion! Here. You may have my autograph.");
		#:: Give a 18244 - Legion Order
		quest::summonitem(18244);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 1);		#:: + Legion of Cabilis
		quest::faction(440, 1);		#:: + Cabilis Residents
		quest::faction(445, 1);		#:: + Scaled Mystics
		quest::faction(442, 1);		#:: + Crusaders of Greenmist
		quest::faction(444, 1);		#:: + Swift Tails
		#:: Grant a small amount of experience
		quest::exp(200);
		#:: Create a hash for storing cash - 5 to 20cp
		my %cash = plugin::RandomCash(5, 20);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 18243 - Legion Order
	elsif (plugin::takeItems(18243 => 1)) {
		quest::say("No deal! You bring me the legion order and the froglok skipping stone.");
		#:: Give a 18243 - Legion Order
		quest::summonitem(18243);
	}
	#:: Match a 12425 - Skipping Stone
	elsif (plugin::takeItems(12425 => 1)) {
		quest::say("No deal! You bring me the legion order and the froglok skipping stone.");
		#:: Give a 12425 - Skipping Stone
		quest::summonitem(12425);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
