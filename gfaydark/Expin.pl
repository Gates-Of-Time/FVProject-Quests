sub EVENT_SAY { 
	if ($text=~/Hail/i) {
		quest::say("How are you, my friend?  You must be a [new scout of Kelethin].  I would hope so.  We dearly need more recruits.  Most of the Fier'Dal choose the path of the ranger.");
	}
	elsif ($text=~/new scout of Kelethin/i) {
		quest::say("Good.  I have an easy, but very important, task for you.  We require all young members to cleanse these woods of the troublesome pixie tricksters.  Take this pouch, fill it, and when it is combined, return it to me.  I just may have some used armor lying around for you.");
		#:: Give a 17957 - Empty Pouch
		quest::summonitem(17957);#Empty Pouch
	}
}

sub EVENT_ITEM { 
	#:: Match a 12109 - Pouch of Pixie Dust
	if (plugin::takeItems(12109 => 1)) {
		quest::say("Good work. scout!!  You have earned this reward.  It is all we have at the time.  I am certain you are satisfied.  If not, then do not let me hear of it.");
		#:: Give a random reward: 2104 - Patchwork Tunic, 2106 - Patchwork Cloak, 2108 - Patchwork Sleeves, 2111 - Patchwork Pants, 2112 - Patchwork Boots
		quest::summonitem(quest::ChooseRandom(2104, 2106, 2108, 2111, 2112));
		#:: Ding!!
		quest::ding();
		#:: Create a hash for storing cash - 100 to 200cp
		my %cash = plugin::RandomCash(100,200);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set faction
		quest::faction(316, 10);	#:: + Tunare's Scouts
		#:: Grant a small amount of experience
		quest::exp(800);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
