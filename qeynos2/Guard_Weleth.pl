sub EVENT_AGGRO {
	quest::say("Time to die, $name!");
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 8
	if ($wp == 8) {
		quest::say("Argh. Not again. This whole crate needs to be returned!");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail, $name. My name is Weleth Nagoh. In addition to my patrol, I am in charge of keeping the guardhouse [stocked with supplies]. I must get back to my duties. Farewell.");
	}
	elsif ($text=~/supplies/i) {
		quest::say("I must keep the guardhouses here stocked with arrows, rations and water. That reminds me.. I still have to return that blasted [crate].");
	}
	elsif ($text=~/duties/i) {
		quest::say("I must keep the guardhouses here stocked with arrows, rations and water. That reminds me.. I still have to return that blasted [crate].");
	}
	elsif ($text=~/crate/i) {
		quest::say("Oh, we just received a shipment of arrows from [Nesiff] in South Qeynos. The [arrows] in this box are missing their fletchings and I can't leave my patrol to take them back.");
	}
	elsif ($text=~/nesiff/i) {
		quest::say("Nesiff Tallaherd owns the wooden weapons shop in Merchant's Square in South Qeynos.");
	}
	elsif ($text=~/arrows/i) {
		quest::say("Oh, thank you! Here is the crate. Make sure [Nesiff] sends me back a new invoice. [Lieutenant Dagarok] would have my head if he found out this happened again!");
		#:: Give a 13925 - Crate of Defective Arrows
		quest::summonitem(13925);
	}
	elsif ($text=~/lieutenant dagarok/i) {
		quest::say("Lieutenant Dagarok is the officer in charge of all of North Qeynos. He is difficult to get along with and I [do not trust] him.");
	}
	elsif ($text=~/trust/i) {
		quest::say("Late one night not long ago, after I was off duty, I witnessed Lieutenant Dagarok and a few others slay someone they claimed was a suspected necromancer. I had met their victim the day before and I know he was an innocent paladin from Freeport. What really shocked me was that Dagarok was bathed in an evil green glow as their victim crumpled to the ground. I don't know who to trust any more!");
	}
}

sub EVENT_ITEM {
	#:: Match a 18824 - Slip of Parchment
	if (plugin::takeItems(18824 => 1)) {
		quest::say("Thank you so much for the favor. Please be careful here in Qeynos. I have come to suspect that even some of my fellow guards are not to be trusted - [Lieutenant Dagarok], for one.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(262, 25);		#:: + Guards of Qeynos
		quest::faction(219, 3);			#:: + Antonius Bayle
		quest::faction(230, -3);		#:: - Corrupt Qeynos Guards
		quest::faction(223, -6);		#:: - Circle of Unseen Hands
		quest::faction(291, 2);			#:: + Merchants of Qeynos
		#:: Create a hash for storing cash - 1 to 10cp
		my %cash = plugin::RandomCash(1,10);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Grant a moderate amount of experience
		quest::exp(8000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
