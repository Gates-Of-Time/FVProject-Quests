sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("This food shortage has finally started affecting even us, all the way over here in Faydwer. We are finding ourselves in [short supply] of certain goods. This is really hurting our business.");
		}
	elsif ($text=~/short supply/i) {
		quest::say("It would really be a big help if you could find a way to assist us in restocking our suppy of baked goods. If you [can bake] or if you are [willing to travel] to help us out, that would be truly grand."); 
	}
	elsif ($text=~/can bake/i) {
		quest::say("You are a baker?  I could use a new supply of [muffins]."); 
	}
	elsif ($text=~/muffins/i) {
		quest::say("Take this crate and fill it with fresh baked muffins."); 
		#:: Give a 17881 - Muffin Crate
		quest::summonitem(17881);
	}
	elsif ($text=~/willing to travel/i) {
		quest::say("If you happen to travel to the continent of Antonica, look up a centaur by the name of Jarlen Meadowgreen. He is an excellent baker and his bread loaves are beyond compare. Tell him you are there to get a shipment of bread loaves and return his product to me. I'll make sure you are compensated for your efforts.");
	}
}

sub EVENT_ITEM {
	#:: Match 1839 - Full Muffin Crate
	if (plugin::takeItems(1839 => 1)) {
		quest::say("Oh, these look delicious! No doubt they were made with fresh fruit grown locally; I can tell by the aroma. You have quite a talent! Thank you so much. Here is your payment. This should be enough to last me for a little while.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(276, 2);			#:: + Kelethin Merchants
 		quest::faction(246, 1);			#:: + #Faydark Champions
 		quest::faction(326, 1);			#:: + Emerald Warriors
		#:: Grant a small amount of level-based experience
		$client->AddLevelBasedExp(4, 14);
		#:: Create a hash for storing cash - 500 to 750cp
		my %cash = plugin::RandomCash(500, 750);
		#:: Grant a random cash reward
		quest::givecash($cash{copper}, $cash{silver}, $cash{gold}, $cash{platinum});
		#:: The Greater Faydark >> Innkeep_Wuleran (54146), restock 13014 - Muffin, quantity 20
		quest::MerchantSetItem(54146, 13014, 20);
	}
	#:: Match a 1838 - Bag of Bread Loaves
	elsif (plugin::takeItems(1838 => 1)) {
		quest::say("Excellent, I see you made it back safely. Thank you so much, here is your payment as promised. Now I can get back to business as usual.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(276, 4);			#:: + Kelethin Merchants
 		quest::faction(246, 1);			#:: + #Faydark Champions
 		quest::faction(326, 1);			#:: + Emerald Warriors
		#:: Create a hash for storing cash - 1300 to 2200cp
		my %cash = plugin::RandomCash(1300, 2200);
		#:: Grant a random cash reward
		quest::givecash($cash{copper}, $cash{silver}, $cash{gold}, $cash{platinum});
		#:: Grant a small amount of level-based experience
		$client->AddLevelBasedExp(4, 14);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
