sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Yes. yes!!  What do I have here?!!  Another [new recruit]?  If so. then speak up!  If not. then leave and do not waste my time nor risk your life.  I also seek a [legion soldier] if you be one.");
	}
	elsif ($text=~/new recruit/i) {
		#:: Match if faction is amiable or better
		if ($faction <= 4) {
			quest::say("Yes.  You have the look of the Partisan.  I trust you have begun your blacksmith training.  If not. then do so.  Also. you should read all the books available to you in Fortress Talishan.  We are not dimwitted broodlings here.  You shall need the knowledge soon. That. or a coffin.  Ha!!  Here is your task. are you [ready for your task]?");
		}
		else {
			quest::say("No Iksar resident will have anything to do with you!!");
		}
	}
	elsif ($text=~/legion soldier/i) {
		#:: Match if faction is amiable or better
		if ($faction <= 4) {
			quest::say("Good news to my ears!!  I seek to prove to the War Baron that the infamous forsaken band of thieves who call themselves Marrtail's Marauders are operating within earshot of our city.  You must bring me proof that you encountered no fewer than four of these thieves.  Do so and I shall offer you an armor item unavailable to most.");
		}
		else {
			quest::say("No Iksar resident will have anything to do with you!!");
		}
	}
	elsif ($text=~/ready for my task/i) {
		#:: Match if faction is amiable or better
		if ($faction <= 4) {
			quest::say("Yes. yes!!  It does not matter.  You must be ready.  I will hand you the Partisan pack.  Into it you shall combine one giant blood sac of the giant leech;  scout beads from a goblin scout; one sabertooth kitten canine and finally. three bone shards from decaying skeletons.  Hopefully. you will survive your attempt to obtain these items.  Return the full Partisan pack and you shall be rewarded with a curscale shield.");
			quest::summonitem(17997);
		}
		else {
			quest::say("No Iksar resident will have anything to do with you!!");
		}
	}
}

sub EVENT_ITEM {
	#:: Match if faction is amiable or better
	if ($faction <= 4) {
		#:: Match four 12915 - Marauder Snout Ring 'MM'
		if (plugin::takeItems(12915 => 4)) {
			quest::emote("hands you a shimmering black piece of armor which smells quite horrid. You find it hard to keep it from slithering out of your hand. 'Here is the armor the tailors have been working on for the legion. You may test it for us. Keep up your fine work and I may have other pieces available for you to test.'");
			#:: Give a random reward:  12917 - Leech Husk Tunic, 12918 - Leech Husk Leggings, 12919 - Leech Husk Gloves, 12920 - Leech Husk Wrist Bands, 12921 - Leech Husk Boots
			quest::summonitem(quest::ChooseRandom(12917, 12918, 12919, 12920, 12921));
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(441, 1);		#:: + Legion of Cabilis
			quest::faction(440, 1);		#:: + Cabilis Residents
			quest::faction(445, 1);		#:: + Scaled Mystics
			quest::faction(442, 1);		#:: + Crusaders of Greenmist
			quest::faction(444, 1);		#:: + Swift Tails
			#:: Grant a moderate amount of experience
			quest::exp(1000);
			#:: Create a hash for storing cash - 100 to 250cp
			my %cash = plugin::RandomCash(100, 250);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		#:: Match a 12673 - Full Partisan Pack
		elsif (plugin::takeItems(12673 => 1)) {
			quest::say("Fantastic work, Partisan $name. Here is your reward. You may continue to perform this task as the baron has found it aids in our defense. I shall always pay for a good day's work. Just let me know if you are still [ready for the task]. As for the curskin shield, you may only have one. Perhaps soon you will prove yourself a formidable fighter and you can earn a militia pike from Drill Master Vygan.");
			#:: Give a 12674 - Curscale Buckler
			quest::summonitem(12674);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(441, 1);		#:: + Legion of Cabilis
			quest::faction(440, 1);		#:: + Cabilis Residents
			quest::faction(445, 1);		#:: + Scaled Mystics
			quest::faction(442, 1);		#:: + Crusaders of Greenmist
			quest::faction(444, 1);		#:: + Swift Tails
			#:: Grant a moderate amount of experience
			quest::exp(500);
			#:: Create a hash for storing cash - 75 to 150cp
			my %cash = plugin::RandomCash(75, 150);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Warrior');
	#:: Return unused items
	plugin::returnUnusedItems();
}
