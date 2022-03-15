sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("Your kind is not welcome in Firiona Vie!");
	}
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail! Beware of the [goblin raiders] roaming the plains outside of Firiona Vie. They have caused much trouble and continue to assault this outpost.");
	}
	elsif ($text=~/raiders/i) {
		quest::say("The goblin raiders have been quite a nuisance to my trackers. I implore you to aid my men and lessen the presence of the vile beasts. Bring me proof that you have taken at least four of these raiders down. You shall earn the respect of this outpost and insure your own well-being.");
	}
	elsif ($text=~/battlemaaster/i) {
		quest::say("The goblin battlemasters are formidable fighters.  They have defeated many of the patrols I sent into the plains.  Bring me proof of four of these fallen goblins and I shall reward you with a piece of Faydark ringmail armor.");
	}
}

sub EVENT_ITEM {
	#:: Match if faction is Dubious or better
	if ($faction < 7) {
		#:: Match four 12922 - Red Headband
		if (plugin::takeItems(12922 => 4)) {	
			quest::say("You serve this outpost well. Here is a small reward. You should try and hunt down [goblin battlemasters]. I have very few resources to send into the plains to track them down. Perhaps you can help us.");
			#:: Give a 9006 - Wooden Shield
			quest::summonitem(9006);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(248, 5);		#:: + Inhabitants of Firiona Vie
			quest::faction(326, 3);		#:: + Emerald Warriors
			quest::faction(312, 3);		#:: + Storm Guard
			quest::faction(441, -1);	#:: - Legion of Cabilis
			quest::faction(313, -1);	#:: - Pirates of Gunthak
			#:: Grant a large amount of experience
			quest::exp(5000);
			#:: Create a hash for storing cash - 800 to 1200cp
			my %cash = plugin::RandomCash(800, 1200);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		#:: Match four 12923 - Goblin Bracer
		elsif (plugin::takeItems(12923 => 4)) {
			quest::say("Good work! Please accept this piece of armor. It was crafted in Felwithe for the swiftly moving rangers of this outpost.");
			#:: Give a random reward:  12933 - Faydark Ringmail Boots, 12930 - Faydark Ringmail Bracer, 12926 - Faydark Ringmail Coat, 12924 - Faydark Ringmail Coif, 12925 - Faydark Ringmail Collar, 12931 - Faydark Ringmail Gloves, 12927 - Faydark Ringmail Mantle, 12932 - Faydark Ringmail Pants, 12928 - Faydark Ringmail Skirt, 12929 - Faydark Ringmail Sleeves
			quest::summonitem(quest::ChooseRandom(12933, 12930, 12926, 12924, 12925, 12931, 12927, 12932, 12928, 12929));
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(248, 10);	#:: + Inhabitants of Firiona Vie
			quest::faction(326, 6);		#:: + Emerald Warriors
			quest::faction(312, 6);		#:: + Storm Guard
			quest::faction(441, -2);	#:: - Legion of Cabilis
			quest::faction(313, -2);	#:: - Pirates of Gunthak
			#:: Grant a large amount of experience
			quest::exp(5000);
			#:: Create a hash for storing cash - 800 to 1200cp
			my %cash = plugin::RandomCash(800, 1200);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
