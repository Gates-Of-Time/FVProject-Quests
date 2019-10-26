sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome you. You look all skin 'n bones. Eat you must do. Chef Dooga can fix up goodies for you. Try [HEHE meat].");
	}
	if ($text=~/hehe meat/i) {
		quest::say("It is a secret ground meat made with high elf, human, and Erudite Flesh. Mmmm. It good stuff. Dooga make it and the [Gobbler] make it. If you find any of those meats in the swamps bring to me and I pay you.");
	}
	if ($text=~/gobbler/i) {
		quest::say("You no hear of the Gobbler!! Him great butcher. Have all kinds of meat. Him am low on froglok legs. Dooga supply him. Dooga need someone to deliver [froglok legs].");
	}
	if ($text=~/froglok legs/i) {
		quest::say("You think so!! That be good thing. Make the Gobbler happy. Maybe he give you something good. Maybe not. You take this. Deliver meat.");
		#:: Give a 13384 - Preserved Leg
		quest::summonitem(13384);
	}
	if ($text=~/apron/i) {
		quest::say("You likes my apron?  You prove you can bake and Dooga will give you one.  Dooga needs three pickled frogloks and 10 gold. Then you gets the apron.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13364 - Human Flesh
	if (plugin::takeItems(13364 => 1)) {
		quest::say("MmmmMmm. Human make good meat pies. Here. A little coins for you.");
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(1000);
		#:: Create a hash for storing cash - 2 to 10cp
		my %cash = plugin::RandomCash(2,10);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(228, 2);		#:: + Clurg
		quest::faction(232, 2);		#:: + Craknek Warriors
		quest::faction(261, 2);		#:: + Green Blood Knights
		quest::faction(337, 2);		#:: + Oggok Gaurds
		quest::faction(274,-2);		#:: + Kazon Stormhammer
	}
	#:: Match a 13365 - High Elf Flesh
	elsif (plugin::takeItems(13365 => 1)) {
		quest::say("High elf! Now that is a good meat. Goes good with Ogre Swill.");
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(1000);
		#:: Create a hash for storing cash - 2 to 10cp
		my %cash = plugin::RandomCash(2,10);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(228, 2);		#:: + Clurg
		quest::faction(232, 2);		#:: + Craknek Warriors
		quest::faction(261, 2);		#:: + Green Blood Knights
		quest::faction(337, 2);		#:: + Oggok Gaurds
		quest::faction(274,-2);		#:: + Kazon Stormhammer
	}
	#:: Match a 21964 - Erudite Meat
	elsif (plugin::takeItems(21964 => 1)) {
		quest::say("Erudite meat! Dooga always liked the dark meat.");
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(1000);
		#:: Create a hash for storing cash - 2 to 10cp
		my %cash = plugin::RandomCash(2,10);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(228, 2);		#:: + Clurg
		quest::faction(232, 2);		#:: + Craknek Warriors
		quest::faction(261, 2);		#:: + Green Blood Knights
		quest::faction(337, 2);		#:: + Oggok Gaurds
		quest::faction(274,-2);		#:: + Kazon Stormhammer
	}
	#:: Match three 13452 - Pickled Froglok and 10gp
	elsif (plugin::takeItemsCoin(0,0,10,0, 13452 => 3)) {
		quest::say("Here is da ogre butcher apron. Gos and cook.");
		#:: Give a 12217 - Ogre Butcher Apron
		quest::summonitem(12217);
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(1000);
		#:: Create a hash for storing cash - 2 to 10cp
		my %cash = plugin::RandomCash(2,10);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(228, 5);		#:: + Clurg
		quest::faction(232, 5);		#:: + Craknek Warriors
		quest::faction(261, 5);		#:: + Green Blood Knights
		quest::faction(337, 5);		#:: + Oggok Gaurds
		quest::faction(274,-5);		#:: + Kazon Stormhammer
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
