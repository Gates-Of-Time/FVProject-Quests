sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Buy, buy, buy. Go ahead, make a purchase. I am not here to talk. Go to Cabilis for talk. Come to Foob for armor. Now hurry and.. Ooh.. Foob is starvings. Foob wish he had his [munch break favorite].");
	}
	elsif ($text=~/munch break favorite/i) {
		quest::emote("rubs his tummy. 'Oh!! Catfish croak sandwich is my favorite, it is. Can only eats on my break. I haves one and one is what the Haggle Baron says to Foob. Only thing is Foob gets way tired from standing. Foob needs some broodling to [fetch the catfish croak sandwich] for him.'");
	}
	elsif ($text=~/fetch.*sandwich/i) {
		quest::say("What?!! You dus gets Foob his sandwich for his munch break!! You be a good tail. Gets me two sandwiches, one fer break and one fer work, then me pay you something for the troubles. But it be no trouble. Foob is sure you know [how to make sandwich].");
	}
	elsif ($text=~/how.*sandwich/i) {
		quest::emote("chortles loudly in disbelief. 'How you not know? It da best food. You gots to get a sewer catfish which swims in da Cabilis, and find lizard who have thin sliced froglok. Then all you need is shrub lettuce and honey mush bread. All dis in da oven makes a good sandwich.'");
	}
}

sub EVENT_ITEM {
	#:: Match two 12451 - Catfish Croak Sandwich
	if (plugin::takeItems(12451 => 2)) {
		quest::say("Me thanks you very much!! Now me stop da tummy grumbles. You have this. And you takes dis. Foob make special, not sold yet, you test it. It is not toughest, but it take a little bashing just like you. It is called Foobscale!!");
		#:: Give a 12448 - Foobscale Coif
		quest:summonitem(12448);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(440, 15);	#:: + Cabilis Residents
		quest::faction(441, 3);		#:: + Legion of Cabilis
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
