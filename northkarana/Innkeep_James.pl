sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Hi $name. Times are tough these days. I am finding myself running short on baked goods lately. Would you be [willing to help] me out?"); 
	}
	elsif ($text=~/willing to help/i) {
		quest::say("You'll help me, great! If you [can bake] you can make me some muffins so I don't run out. Otherwise, you [can travel] a little way for me and pick up some bread.");
	}
	elsif ($text=~/can bake/i) {
		quest::say("Take this crate and fill it with muffins, seal it up and bring it back to me. Don't go trying to pass off that store bought stuff, I need fresh baked muffins. The ones in the stores are already too old and I need to keep the guards and gypsys happy!");
		#:: Give a 17881 - Muffin Crate
		quest::summonitem(17881);
	}
	elsif ($text=~/can travel/i) {
		quest::say("Accross the bridge in the southern plains is one heck of a baker. It's one of the Meadowgreen fellas.  Go look him up and tell him you want a bag of bread loaves.");
	}
}

sub EVENT_ITEM {
	#:: Match a 1839 - Full Muffin Crate
	if (plugin::takeItems(1839 => 1)) {
		quest::say("Ah, praise Karana! These muffins look good enough to eat, har har har! Here is your payment and you have my deepest gratitude. We have to stick together in these times of turmoil you know.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(291, 2);			#:: + Merchants of Qeynos
		quest::faction(262, 1);			#:: + Guards of Qeynos
		quest::faction(219, 1);			#:: + Antonius Bayle
		quest::faction(229, 1);			#:: + Coalition of Tradefolk
		quest::faction(223, -1);		#:: - Circle of Unseen Hands
		#:: Grant a small amount of level-based experience
		$client->AddLevelBasedExp(4, 14);
		#:: Create a hash for storing cash - 500 to 750cp
		my %cash = plugin::RandomCash(500,750);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: The Northern Plains of Karana >> Innkeep_James (13074), restock 13014 - Muffin, quantity 20
		quest::MerchantSetItem(13074, 13014, 20);
	}
	#:: Match a 1838 - Bag of Bread Loaves
	elsif (plugin::takeItems(1838 => 1)) {
		quest::say("Ahhh, fresh baked bread! Thank you for making the trip, it's not far, but I can never seem to find the time. Here is a little coin for your travel expenses. You have my thanks.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(291, 4);			#:: + Merchants of Qeynos
		quest::faction(262, 1);			#:: + Guards of Qeynos
		quest::faction(219, 1);			#:: + Antonius Bayle
		quest::faction(229, 1);			#:: + Coalition of Tradefolk
		quest::faction(223, -1);		#:: - Circle of Unseen Hands
		#:: Grant a small amount of level-based experience
		$client->AddLevelBasedExp(4, 14);
		#:: Create a hash for storing cash - 1200 to 1400cp
		my %cash = plugin::RandomCash(1200, 1400);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
