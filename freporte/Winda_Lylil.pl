sub EVENT_ITEM {

#:: Match 1839 - Full Muffin Crate
  if (plugin::takeItems(1839 => 1)) {
		quest::say("Ah yes! This is exactly what I am looking for, dear. Let me put these on the shelf right away. Here is some coin for your trouble. Perhaps we can do business again sometime.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(281, -1);		#:: - Knights of Truth
		quest::faction(330, 2); 		#:: + Freeport Militia
		quest::faction(336, 1);		  #:: + Coalition of Tradefolk Underground
		quest::faction(362, -1);		#:: - Priests of Marr
		#:: Grant a moderate amount of experience
		quest::exp(1000);
		#:: Create a hash for storing cash - 500 to 750cp
		my %cash = plugin::RandomCash(500,750);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: East Freeport >> Winda Lylil (10062), restock 13014 - Muffin, quantity 20
		quest::MerchantSetItem(10062, 13014, 20);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
