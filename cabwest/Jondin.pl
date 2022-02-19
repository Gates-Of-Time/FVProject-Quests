sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Greetings. friend.  I have many fine herbs for sale.  My prices are reasonable for I am not governed by the [Haggle Baron].  If you fancy yourself an adventurer. I would like to hire you for a [simple mission].");
	}
	elsif ($text=~/haggle baron/i) {
		quest::say("Haggle Baron Klok Dun Ree is the current Haggle Baron. It is written in the law that all services shall be governed by the Haggle Baron. To do business outside of the law is forbidden, but the merchants of the Tower of Death are exempt from this rule. Klok will not test the temper of the Harbinger and Baron Eator will not upset his most powerful ally.");
	}
	elsif ($text=~/simple mission/i) {
		quest::say("I actually have a few items I am presently low on.  I would appreciate some assistance to [collect fern flowers] or maybe you are an alchemist who can [gather bone chips].");
	}
	elsif ($text=~/fern flowers/i) {
		quest::say("I have run low on fern flowers and must have more of them.  Take this [flower pouch].  Outside the city can be found carnivorous plants and a strain of them buds the flower in question.  Collect enough of these flowers to fill and combine the pouch and I shall reward you.");
		#:: Give a 17025 - Fern Flower Pouch
		quest::summonitem(17025);
	}
	elsif ($text=~/bone chips/i) {
		quest::say("I should tell you. I do not need the bone chips.  I need bone granite powder.  In order to get it, you must find some granite pebbles and then three piles of bone chips from decaying skeletons.  After you gather the items you will have to use your skill in alchemy to combine the items and create bone granite powder.  The powder is what I need.");
	}
}

sub EVENT_ITEM {
	#:: Match a 12442 - Bone Granite Powder
	if (plugin::takeItems(12442 => 1)) {
		quest::say("Excellent!  You are a fine alchemist.  Please accept this as a token of my appreciation.");
		#:: Create a scalar variable to store a random number from 1 - 4
		my $Number = int(rand(4)) + 1;
		if ($Number == 1) {
			#:: Give a 12443 - Kromdul Toothpick
			quest::summonitem(12443);
		}
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(443, 1);		#:: + Brood of Kotiz
		quest::faction(441, 1);		#:: + Legion of Cabilis		
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
