sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Very good to make your acquaintance $name. If you are a [new knight]. then let it be known. for I am seeking young knights of Deepwater.");
	}
	if ($text=~/new knight/i) {
		quest::say("You do seem a bit young. We shall have to test your mettle. Within this temple. you shall learn to swim as fast as the swordfish and attack with the bravery and skill of the shark. Are you willing to [assist with the cleansing of the ocean]?");
	}
	if ($text=~/assist with the cleansing of the ocean/i) {
		quest::say("Go to the waters near the harbor. We have heard of Qeynos' rogue guild attempting to smuggle our valuable Vasty Deep water from Odus by way of swimmers. We require proof of their involvement. It is said they often carry special coins. Return one of these coins to me.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13881 -  Nicked Coin
	if (plugin::check_handin(\%itemcount, 13881 => 1)) {
		quest::say("Good work. You have shown these rogues who are the better swimmers. Now we have proof of their involvement. You are a fine addition to the temple. Take this small reward. Go, and serve Prexus.");
		#:: Randomly choose 13003 - Small Lantern or 10004 - Copper Band
		quest::summonitem(quest::ChooseRandom(13003,10004));
		#:: Ding!
		quest::ding();
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Create a hash for storing cash - 5 to 10cp
		my %cash = plugin::RandomCash(5,10);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set faction
		quest::faction(242,10);	 	#:: + Deepwater Knights
		quest::faction(266,10); 	#:: + High Council of Erudin
		quest::faction(265,-15); 	#:: - Heretics
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
