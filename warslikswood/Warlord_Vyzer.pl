sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, small one! You should not waste your time in the safety of the troopers' patrols. Go forth into the land and earn your stripes in battle. Become a greater asset to the Iksar empire.");
	}
	elsif ($text=~/poem/i) {
		quest::say("What kind on nonsssenssse do you sspeak?  Unless you find sssomething with my name on it, I cannot help you.");
	}
	#:: Match if faction is amiable or better
	if ($faction <= 4) {
		if ($text=~/thieves/i) {
			#:: Text made up
			quest::say("Oh yes, the thieves were none other than a band of goblin thieves who crept silently into my quarters.  They are often found lurking close to these walls.  Find them and return my poem!");
		}
		elsif ($text=~/trooper reporting for duty/i) {
			quest::say("Welcome to my garrison, Trooper $name. Lucky for you that you do not serve the inferior swamp garrison. They lose more troopers than any legion unit. You have come just in time. We need you to take this pack and fill it with goblin warlord warbeads. Combine the beads in the pack and return it to me.");
			#:: Give a 17042 - Woods Garrison Pack
			quest::summonitem(17042);
		}
	}
	else {
		quest::say("No Iksar resident will have anything to do with you!");
	}
}

sub EVENT_ITEM {
	#:: Match a 18210 - Note to Iksar Lord
	if (plugin::takeItems(18210 => 1)) {
		quest::say("'I am glad to see they have sent a strong new recruit. I have a task for you which will require you to recover a few pages of a certain poem I once wrote. I never should have written of such weak-minded things, but the pages were stolen from me before I could destroy them. Take this poem binder and find the [thieves]. When you combine the pages in the binder, it will magically lock and you may return it to me for your prize, the geozite tool.");
		#:: Give a 17995 - Book Binder
		quest::summonitem(17995);
	}
	#:: Match a 12667 - Magically Locked Poem
	elsif (plugin::takeItems(12667 => 1)) {
		quest::say("Great work!! You have saved me from disgrace. I reward you with the geozite tool. You may find its purpose within Cabils' warriors guild. A true Iksar warrior should always have one.");
		#:: Give a 12657 - Geozite Tool	
		quest::summonitem(12657);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 5);		#:: + Legion of Cabilis
		quest::faction(440, 1);		#:: + Cabilis Residents
		quest::faction(445, 1);		#:: + Scaled Mystics
		quest::faction(442, 1);		#:: + Crusaders of Greenmist
		quest::faction(444, 1);		#:: + Swift Tails
		#:: Grant a moderate amount of experience
		quest::exp(1000);
		#:: Create a hash for storing cash - 90 to 100cp
		my %cash = plugin::RandomCash(90 , 100);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 12912 - Four Warbeads
	elsif (plugin::takeItems(12912 => 1)) {
		quest::say("Great job, Trooper $name. Such a warrior would serve the empire better as a legionnaire and not a trooper. I shall recommend you for the rank of legionnaire.");
		#:: Give a 18072 - Legionnaire Recommendation
		quest::summonitem(18072);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 10);	#:: + Legion of Cabilis
		quest::faction(440, 2);		#:: + Cabilis Residents
		quest::faction(445, 2);		#:: + Scaled Mystics
		quest::faction(442, 2);		#:: + Crusaders of Greenmist
		quest::faction(444, 2);		#:: + Swifttails
		#:: Grant a moderate amount of experience
		quest::exp(2000);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
