sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Huh? Oh hi $name. Youse want to buy sumthin?");
	}
}

sub EVENT_ITEM {
	#:: Match a 1839 - Full Muffin Crate
	elsif (plugin::takeItems(1839 => 1)) {
		quest::say("MMmmm... Deez look like gud muffins. Here's sum money. Tanks. Now meez all stocked again.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(338, 2);		#:: + Merchants of Oggok
		quest::faction(228, 1);		#:: + Clurg
		quest::faction(337, 1);		#:: + Oggok Guards
		#:: Grant a moderate amount of experience
		quest::exp(1000);
		#:: Create a hash for storing cash - 500 to 750cp
		my %cash = plugin::RandomCash(500,750);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Feerrott >> Innkeep Gub (47114), restock 13014 - Muffin, quantity 20
		quest::MerchantSetItem(47114, 13014, 20);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
