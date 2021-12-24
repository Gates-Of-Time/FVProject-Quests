sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Greetings. friend! I am Gallin Woodwind of the Emerald Warriors. It is my charge to send forth Fier'Dal to [hunt for meat]. Kelethin's citizens must be nourished and this requires meat. Such is the circle of life.");
	}
	elsif ($text=~/hunt for meat/i) {
		quest::say("Good!!  We have enough young warriors hunting in our woods. Your duty shall be to take this pack to the ocean and seek out sharks. Fill the bag with shark meat and combine it. I shall reward you with a fine piercing weapon."); 
		#:: Give a 17953 - Pack for Shark
		quest::summonitem(17953);
	}
}

sub EVENT_ITEM {
	#:: Match a 12121 - Pack of Meat
	if (plugin::takeItems(12121 => 1)) {
		quest::say("Very good. This meat will supply our warriors with much strength. We have found the meat from sharks to be quite nourishing. Here, then, are your wages and your weapon. All of Kelethin appreciates your great deed.");
   		#:: Give a random reward: 7001 - Dagger, 7032 - Cast-Iron Rapier
		quest::summonitem(quest::ChooseRandom(7001, 7032));
		#:: Ding!
		quest::ding();
		#:: Create a hash for storing cash - 700 to 1000cp
		my %cash = plugin::RandomCash(700,1000);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(326, 40);		#:: + Emerald Warriors
		quest::faction(270, -6);		#:: - Indigo Brotherhood
		quest::faction(325, 4);			#:: + Merchants of Felwithe
		quest::faction(276, 4);			#:: + Kelethin Merchants
		#:: Grant a small amount of experience
		quest::exp(150);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
