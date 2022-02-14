sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings!! You look like an adventurer. I have a bit of a problem with which you might be able to help. You see, there have been reports of sarnak hatchlings near the lake. I do not know why they are here, but I do know we need them exterminated. Here is the deal.. You bash them good and return their brains to me. For every four brains, I shall reward you.");
	}
	elsif ($text=~/trooper reporting for duty/i) {
		quest::say("Very good to have you on board, Trooper $name! We have had reports of sarnak legionnaires attacking caravans. I shall require you to find these sarnak legionnaires. Take this pack. Fill and combine it with as many of their brains as sill fit inside. Return the full pack to me and I shall consider you for a promotion.");
		#:: Give a 17044 - Lake Garrison Pack
		quest::summonitem(17044);
	}
}

sub EVENT_ITEM {
	#:: Match a 12914 - Four Sarnak Heads
	if (plugin::takeItems(12914 => 1)) {
		quest::say("Very good. I cannot see any reason a warrior like you should waste their time on the patrols of a trooper. I shall recommend you for a promotion. I hope the War Baron agrees.");
		#:: Give a 18074 - Legionnaire Recommendation
		quest::summonitem(18074);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 2);		#:: + Legion of Cabilis
		quest::faction(440, 1);		#:: + Cabilis Residents
		quest::faction(445, 1);		#:: + Scaled Mystics
		quest::faction(442, 1);		#:: + Crusaders of Greenmist
		quest::faction(444, 1);		#:: + Swift Tails
		#:: Grant a moderate amount of experience
		quest::exp(2000);
	}
	#:: Match four 12408 - Sarnak Hatchling Brain
	elsif (plugin::takeItems(12408 => 4)) { 
		quest::say("Bravo!! You have done well. Here is a small reward. The greater reward is service to the empire.");
		#:: Give a 12614 - Dried Froglok Leg
		quest::summonitem(12614);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 2);		#:: + Legion of Cabilis
		quest::faction(440, 1);		#:: + Cabilis Residents
		quest::faction(445, 1);		#:: + Scaled Mystics
		quest::faction(442, 1);		#:: + Crusaders of Greenmist
		quest::faction(444, 1);		#:: + Swift Tails
		#:: Grant a moderate amount of experience
		quest::exp(3000);
		#:: Create a hash for storing cash - 10 to 20cp
		my %cash = plugin::RandomCash(10, 20);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
