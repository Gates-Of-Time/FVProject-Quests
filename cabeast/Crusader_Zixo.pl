sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Do you come to me empty handed, knave? Did you lose your pike?");
	}
	elsif ($text=~/no/i) {
		quest::say("Very good.  Then hold it at your side with pride and while you are at it, try to convince me that you are worth a little more than the slime that you wallowed from.  Straighten up and move out, little wretch!");
	}
	elsif ($text=~/yes/i) {
		quest::emote("roars at you, heat pouring into his dead eyes.  'Do you know what this means, wretch?  I will give you one chance to prevent your floating near my feet.  Take this tome and go speak to the Toilmaster.  MOVE, while you still have breath.");
		#:: Give a 18271 - Ragged Book
		quest::summonitem(18271);
	}
}

sub EVENT_ITEM {
	#:: Match a 18272 - Rites of Exoneration, and a 24770 - Filled Penance Bag
	if (plugin::takeItems(18272 => 1, 24770 => 1)) { 
		quest::emote("takes the bag and tome from you and in return gives you the item that you have been thinking of all of this time.  Lucky you... you have earned a second chance. Praise Cazic-Thule!'");
		#:: Give a 5130 - Partisan's Pike
		quest::summonitem(5130);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(442, 100);		#:: + Crusaders of Greenmist
		quest::faction(441, 25);		#:: + Legion of Cabilis
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Create a hash for storing cash - 10 to 20cp
		my %cash = plugin::RandomCash(10, 20);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
