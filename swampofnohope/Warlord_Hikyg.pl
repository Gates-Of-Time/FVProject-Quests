sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("What business do you have speaking to an Iksar Warlord? Be gone before you find yourself served as my evening meal. Go to Captain Nedar if you wish to assist my garrison. Fool.");
	}
	elsif ($text=~/trooper reporting for duty/i) {
		quest::say("It is about time they sent new troopers for my garrison!! This is the toughest garrison in Kunark!! And you're going to help prove it. The legion needs to get a hold of some new frog shields called Krup warrior guards. You're going to take this pack and fill it with not one, but four!! When you can return a full, combined pack to me, maybe you will show me that you're not as weak as you look!!");
		#:: Give a 17043 - Swamp Garrison Pack
		quest::summonitem(17043);
	}
	elsif ($text=~/prepared to hunt/i) {
		quest::say("Of course you are. They are to be found running in packs within the edges of the city gates. Find the Escaped Frogloks and slay them. Take their Slave Shackles and throw them in the bag I have given you. When it is filled and combined, return it to me. My concern is only for those who have escaped into the swamp. This is my land and I have been ordered to keep it's denizens under control.");
		#:: Give a 17994 - Slave Shackle Bag
		quest::summonitem(17994);
	}
}

sub EVENT_ITEM {
	#:: Match a 12661 - Filled Slave Shackle Bag
	if (plugin::takeItems(12661 => 1)) {
		quest::say("Good work, $name. You would make a fine trooper in my garrison. As instructed by the War Baron, I reward you with the geozite tool. May you find your place among the Legion of Cabilis and win many battles.");
		#:: Give a 12657 - Geozite Tool
		quest::summonitem(12657);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 10);	#:: + Legion of Cabilis
		quest::faction(440, 2);		#:: + Cabilis Residents
		quest::faction(445, 2);		#:: + Scaled Mystics
		quest::faction(442, 2);		#:: + Crusaders of Greenmist
		quest::faction(444, 2);		#:: + Swifttails
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Create a hash for storing cash - 500 to 1000cp
		my %cash = plugin::RandomCash(500, 1000);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 12913 - Four Crushed Shields
	elsif (plugin::takeItems(12913 => )) {
		quest::say("What?!! You crushed all the shields!! You croak-faced skulking brute!! You don't deserve to be in my garrison!! I am going to recommend you for a promotion in hopes that you will be sent to hunt dragons and meet your end!");
		#:: Give a 18073 - Legionnaire Recommendation
		quest::summonitem(18073);
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
	#:: Match a 12435 - Froglok Head, a 12436 - Froglok Head, a 12437 - Froglok Head, and a 5133 - Soldier's Pike
	elsif (plugin::takeItems(12435 => 1, 12436 => 1, 12437 => 1, 5133 => 1)) {
		quest::emote("hands you plans for a trooper's pike head. 'Congratulations. You are now a trooper of the Legion of Cabilis. Now you may fight with honor and a mighty weapon.'");
		#:: Give a 12477 - Trooper Head Plans
		quest::summonitem(12477);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 10);	#:: + Legion of Cabilis
		quest::faction(440, 2);		#:: + Cabilis Residents
		quest::faction(445, 2);		#:: + Scaled Mystics
		quest::faction(442, 2);		#:: + Crusaders of Greenmist
		quest::faction(444, 2);		#:: + Swifttails
		#:: Grant a moderate amount of experience
		quest::exp(1200);
	}
	#:: Match a 12435 - Froglok Head
	elsif (plugin::takeItems(12435 => 1)) {
		quest::emote("looks at you in disgust. 'I was expecting the heads of Narsh, Barsh and Flendle, as well as your soldier's pike. Then, you will be promoted to the rank of Trooper.'");
		#:: Give a 12435 - Froglok Head
		quest::summonitem(12435);
	}
	#:: Match a 12436 - Froglok Head
	elsif (plugin::takeItems(12436 => 1)) {
		quest::emote("looks at you in disgust. 'I was expecting the heads of Narsh, Barsh and Flendle, as well as your soldier's pike. Then, you will be promoted to the rank of Trooper.'");
		#:: Give a 12435 - Froglok Head
		quest::summonitem(12436);
	}
	#:: Match a 12437 - Froglok Head
	elsif (plugin::takeItems(12437 => 1)) {
		quest::emote("looks at you in disgust. 'I was expecting the heads of Narsh, Barsh and Flendle, as well as your soldier's pike. Then, you will be promoted to the rank of Trooper.'");
		#:: Give a 12435 - Froglok Head
		quest::summonitem(12437);
	}
	#:: Match a 5133 - Soldier's Pike
	elsif (plugin::takeItems(5133 => 1)) {
		quest::emote("looks at you in disgust. 'I was expecting the heads of Narsh, Barsh and Flendle, as well as your soldier's pike. Then, you will be promoted to the rank of Trooper.'");
		#:: Give a 5133 - Soldier's Pike
		quest::summonitem(5133);
	}
	#:: Match a 18211 - Note to Iksar Lord
	elsif (plugin::takeItems(18211 =>1 )) {
		quest::say("It is about time they have sent some lackey to perform tasks too paltry for my Troopers to deal with. We need to punish those who dare to run from their servitude. You will need this bag. Are you [prepared to hunt escaped froglok slaves] and serve your Lord?");
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
