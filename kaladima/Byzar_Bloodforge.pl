sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("State your business!!  I have no time for chitchat.  Well..  speak up, toad!!  What?!!..  Have you come here to [return goblin beads]?");
	}
	elsif ($text=~/return goblin beads/i) {
		#:: Match if faction is Apprehensive or better
		if ($faction <= 6) {
			quest::say("If you wish to return Runnyeye Warbeads you best have at least four of them.  Do not waste my time with any less.  If I am in a good mood I just may reward you with some trash, err..  I mean equipment from our armory.");
		}
		else {
			quest::say("Your shifty eyes tell me that you are no ally of the Stormguard.");
		}
	}
	elsif (($text=~/Zachoomi/i) || ($text=~/Corflunk/i)) {
		#:: Match if faction is Apprehensive or better
		if ($faction <= 6) {
			quest::say("Do not speak the names of Zarchoomi and Corflunk!!  I have heard enough of those ogres!!  I would pay greatly for their heads!!");
		}
		else {
			quest::say("Your shifty eyes tell me that you are no ally of the Stormguard.");
		}
	}
	elsif ($text=~/take a little trip/i) {
		#:: Match if faction is Apprehensive or better
		if ($faction <= 6) {
			quest::say("Yes.  You will do.  My sister was once engaged to a fellow warrior.  He disgraced her and left her crying at the altar.  I will have his head for such a slap in the face of my family.  His name was Trumpy Irontoe, once a member of the now defunct Irontoe Brigade.  I know not where he went.  Find his whereabouts and return his head to me.  Do so, and I shall make you an honorary member of the Bloodforge Brigade.");
		}
		else {
			quest::say("Your shifty eyes tell me that you are no ally of the Stormguard.");
		}
	}
	elsif ($text=~/irontoe/i) {
		#:: Match if faction is Apprehensive or better
		if ($faction <= 6) {
			quest::say("The Irontoe Brigade was formed by Drumpy Irontoe. It was once the finest band of warriors in Kaladim. They were the elite branch of the Stormguard. King Kazon sent them on a mission to the lands of the Crushbone orcs. At the Battle of Busted Skull they met their fate.");
		}
		else {
			quest::say("Your shifty eyes tell me that you are no ally of the Stormguard.");
		}
	}
	elsif ($text=~/crushbone orcs/i) {
		#:: Match if faction is Apprehensive or better
		if ($faction <= 6) {
			quest::say("The army of the Crushbone orcs is deadly indeed. They are great military strategists. It was a legion of them that brought down the great [Trondle Ogrebane]. Speak with Furtog Ogrebane about the Crushbones. He has need of warriors such as you.");
		}
		else {
			quest::say("Your shifty eyes tell me that you are no ally of the Stormguard.");
		}
	}
	elsif ($text=~/trondle ogrebane/i) {
		#:: Match if faction is Apprehensive or better
		if ($faction <= 6) {
			quest::say("Trondle Ogrebane is the legendary dwarven warrior who single-handedly exterminated the ogre clan called the [Mudtoes]. He was recently killed in battle. It took an entire legion of Crushbone orcs to bring him down. Furtog is still fuming about that.");
		}
		else {
			quest::say("Your shifty eyes tell me that you are no ally of the Stormguard.");
		}
	}
	elsif ($text=~/mudtoes/i) {
		#:: Match if faction is Apprehensive or better
		if ($faction <= 6) {
			quest::say("The Mudtoes were a small clan of ogres. They lived somewhere in the Butcherblock Mountains. They had an insatiable appetite for dwarves. They were finally destroyed by the hand of Trondle Ogrebane.");
		}
		else {
			quest::say("Your shifty eyes tell me that you are no ally of the Stormguard.");
		}
	}
	elsif ($text=~/bloodforge brigade/i) {
		#:: Match if faction is Apprehensive or better
		if ($faction <= 6) {
			quest::say("The Bloodforge Brigade is the elite force of the Stormguard. They took the place of the Irontoe Brigade. They are led by Byzar Bloodforge.");
		}
		else {
			quest::say("Your shifty eyes tell me that you are no ally of the Stormguard.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match four 13931 - Runnyeye Warbeads
	if (plugin::takeItems(13931 => 4)) {
		#:: Match if faction is Apprehensive or better
		if ($faction <= 6) {
			quest::say("You finally have proven yourself a warrior, a slow one!!  Take this reward and ask for nothing else.  You should be proud to defend Kaladim and expect no reward.");
			#:: Reward a 2113 - Small Tattered Skullcap, 2114 - Small Tattered Mask, 2115 - Small Tattered Gorget, 2117 - Small Tattered Shoulderpads, 2119 - Small Tattered Belt, 2121 - Small Tattered Wristbands, 2122 - Small Tattered Gloves
			quest::summonitem(quest::ChooseRandom(2113,2114,2115,2117,2119,2121,2122));
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(312, 5);			#:: + Storm Guard
			quest::faction(274, 1);			#:: + Kazon Stormhammer
			quest::faction(293, 1);			#:: + Miners Guild 249
			quest::faction(290, 1);			#:: + Merchants Of Kaladim
			quest::faction(232, -1);		#:: - Craknek Warriors
			#:: Grant a moderate amount of expierence
			quest::exp(10000);
			#:: Create a hash for storing cash - 200 to 250cp
			my %cash = plugin::RandomCash(200,250);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		else {
			quest::say("Your shifty eyes tell me that you are no ally of the Stormguard.");
			#:: Return a 13931 - Runnyeye Warbeads
			quest::summonitem(13931);
			#:: Return a 13931 - Runnyeye Warbeads
			quest::summonitem(13931);
			#:: Return a 13931 - Runnyeye Warbeads
			quest::summonitem(13931);
			#:: Return a 13931 - Runnyeye Warbeads
			quest::summonitem(13931);
		}
	}
	#:: Match a 13741 - Ogre Head and a 13740 - Ogre Head
	elsif (plugin::takeItems(13741 => 1, 13740 => 1)) {
		#:: Match if faction is Apprehensive or better
		if ($faction <= 6) {
			quest::say("I underestimated you.  You are truly a great warrior.  I reward you with a piece of my own Bloodforge armor.  You would be fine Bloodforge Brigade material!  How would you like to [take a little trip] in the name of the Bloodforge Brigade?");
			#:: Reward a 3090 - Bloodforge Helm, 3091 - Bloodforge Mail, 3092 - Bloodforge Armplates, 3093 - Bloodforge Bracers, 3094 - Bloodforge Gauntlets, 3095 - Bloodforge Legplates, 3096 - Bloodforge Boots
			quest::summonitem(quest::ChooseRandom(3090,3090,3090,3090,3090,3090,3091,3092,3093,3094,3095,3096));
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(312, 20);		#:: + Storm Guard
			quest::faction(274, 3);			#:: + Kazon Stormhammer
			quest::faction(293, 3);			#:: + Miners Guild 249
			quest::faction(290, 5);			#:: + Merchants Of Kaladim
			quest::faction(232, -5);		#:: - Craknek Warriors
			#:: Grant a moderate amount of expierence
			quest::exp(10000);
			#:: Create a hash for storing cash - 50 to 150cp
			my %cash = plugin::RandomCash(50,150);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		else {
			quest::say("Your shifty eyes tell me that you are no ally of the Stormguard.");
			#:: Return a 13741 - Ogre Head
			quest::summonitem(13741);
			#:: Return a 13740 - Ogre Head
			quest::summonitem(13740);
		}
	}
	#:: Match a 12136 - Dwarf Head
	elsif (plugin::takeItems(12136 => 1)) {
		#:: Match if faction is Apprehensive or better
		if ($faction <= 6) {
			quest::say("Ha!! His death brings me great happiness.  I owe you much.  Take this hammer.  It is the hammer of the Bloodforge Brigade.  May it serve you well.  Now go, so I can enjoy this moment of happiness alone.");
 			#:: Reward a 13314 - Bloodforge Hammer
			quest::summonitem(13314);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(312, 5);			#:: + Storm Guard
			quest::faction(274, 1);			#:: + Kazon Stormhammer
			quest::faction(293, 1);			#:: + Miners Guild 249
			quest::faction(290, 1);			#:: + Merchants Of Kaladim
			quest::faction(232, -1);		#:: - Craknek Warriors
			#:: Grant a moderate amount of expierence
			quest::exp(10000);
			#:: Create a hash for storing cash - 200 to 250cp
			my %cash = plugin::RandomCash(200,250);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		}
		else {
			quest::say("Your shifty eyes tell me that you are no ally of the Stormguard.");
 			#:: Return a 12136 - Dwarf Head
			quest::summonitem(12136);
		}
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Warrior');
	#:: Return unused items
	plugin::returnUnusedItems();
}
