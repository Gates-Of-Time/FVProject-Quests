#:: Create a scalar variable to store an item count
my $ItemCount;

sub EVENT_SPAWN {
	#:: Reset item count on spawn
	$ItemCount = 0;
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Good day! I see they have good stock for the future armies of Qeynos. I, myself, wish to be a soldier one day instead of doing this [job].");
	}
	elsif ($text=~/job/i) {
		quest::say("I am a [messenger] for Antonius Bayle. Not big enough to fight, but light enough to run all the way to the [Jaggedpine] tomorrow morning. I sort of wish I did not have to go. I'd rather be at the Lion's Mane.");
	}
	elsif ($text=~/messenger/i) {
		quest::say("I will be taking a private note to the head druid of the Jaggedpine Treefolk. Matter of fact, I am carrying the note right now. But enough about that, if it were not for the mission tomorrow, I could be doing something at the [Lion's Mane].");
	}
	elsif ($text=~/jaggedpine/i) {
		quest::say("I will be taking a private note to the head druid of the Jaggedpine Treefolk. Matter of fact, I am carrying the note right now. But enough about that, if it were not for the mission tomorrow, I could be doing something at the [Lion's Mane].");
	}
	elsif ($text=~/lion's mane/i) {
		quest::say("Ahh. The Lion's Mane. If I were there, I would be enjoying a stein of Crow's [special brew]. They are expecting their first shipment of the brew. I believe if I had a few or more of those lagers, I would be very ill. I would probably have to have someone else deliver the note for me. Still, I wish I had one of those fine brews.");
	}
	elsif ($text=~/special brew/i) {
		quest::say("Crow's special brew is one of the finest lagers anywhere. It used to be sold only at Crow's bar, but apparently Crow is allowing it into other bars. For a hefty price, too, I assume. This deal is good for decent citizens considering that the other two bars in Qeynos cater to pretty rough crowds.");
	}
	elsif ($text=~/order of the three/i) {
		quest::say("The Order of Three consists of the three positive circles of the arcane known as magic, enchantment and wizardry.  This guild keeps very busy in its hall near the arena.  All in Qeynos respect their powers.");
	}
	elsif ($text=~/where.*monk guild/i) {
		quest::say("In North Qeynos sits the house of the Silent Fist Clan.  These monks are welcome in Qeynos and often assist in training the Qeynos Guard in hand to hand combat.");
	}
	elsif ($text=~/where.*bank/i) {
		quest::say("Qeynos Hold is South Qeynos is just across from the arena.  You know, over the bridge behind Firepride's.");
	}
	elsif ($text=~/where.*port/i) {
		quest::say("The port of Qeynos is located in South Qeynos.  From here one may catch the ship to Erudin.");
	}
	elsif ($text=~/where.*dock/i) {
		quest::say("The port of Qeynos is located in South Qeynos.  From here one may catch the ship to Erudin.");
	}
	elsif ($text=~/who.*kane/i) {
		quest::say("Commander Kane Bayle is the commander of all the Qeynos Guard.  He is second only to his brother, Antonius Bayle.  His post is in the guard house at the city gates.  Mind you, do not bother him, he has a bit of a temper.");
	}
	elsif ($text=~/who.*circle of unseen hands/i) {
		quest::say("The Circle of the Unseen Hand?  I have heard nothing of them.  Are they some sort of performing magic troupe?");
	}
	elsif ($text=~/(cleric|paladin) guild/i) {
		quest::say("Within Qeynos are the Knights of Thunder and the Priests of Life.  Both of these orders consist of clerics and paladins and are respected by all.  The Hall of Thunder lies in South Qeynos and the Temple of Life is in North Qeynos.");
	}
	elsif ($text=~/(ranger|druid) guild/i) {
		quest::say("I believe you shall find the Protectors of the Pine and Jaggedpine Treefolk in the hollow of Surefall Glade.");
	}
	elsif ($text=~/(necromancer|shadowknight) guild/i) {
		quest::say("What gibberish are you spouting?  There is not, nor will there ever be, such an organization as that within a hundred miles of Qeynos, not with the Qeynos Guard on patrol.  Next you will be inquiring of a rogue guild!  Really!");
	}
	elsif ($text=~/who.*jaggedpine treefolk/i) {
		quest::say("In Surefall Glade there are druids called the Jaggedpine Treefolk.  These men and women often assist our army during times of war.");
	}
	elsif ($text=~/captain linarius/i) {
		quest::say("The Qeynos Tower Guards of the hills and plains are commanded by Captain Linarius Graffe.  He often has much to report.  He is posted in a keep which spans a river.  I believe it is in the northern Plains of Karana.");
	}
	elsif ($text=~/where.*north qeynos/i) {
		quest::say("The passages to North Qeynos can be found near the bard's guild or next to the Clock of Ak'Anon.");
	}
	elsif ($text=~/where.*south qeynos/i) {
		quest::say("The passages to North Qeynos can be found near the bard's guild or next to the Clock of Ak'Anon.");
	}
	elsif ($text=~/where.*inn/i) {
		quest::say("If you need a place to rest, I highly recommend the Lion's Mane Inn and Tavern.  Poor adventurers all huddle together in one of the backrooms of Fish's.");
	}
	elsif ($text=~/where.*weapons/i) {
		quest::say("This city has been blessed with the craftsmanship of the Ironforges.  Their weapons are supreme.  Their shop can be found near the Temple of Life in North Qeynos.  You may also try the local warrior guild.");
	}
}

sub EVENT_ITEM {
	#:: Match four 13799 - Crow's Special Brew
	if (plugin::takeItems(13799 => 4)) {
		quest::say("Oohhh! My head. Stop the pub from spinning. I cannot make it to the Jaggedpine feeling like this. Please take this note to Te'Anara of the Treefolk. Here is a little silver for the favor. Thanks. Ooohhhh...");
		#:: Give a 18807 - Sealed Letter
		quest::summonitem(18807);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(262, 50);		#:: + Guards of Qeynos
		quest::faction(219, 7);			#:: + Antonius Bayle
		quest::faction(230, -7);		#:: - Corrupt Qeynos Guards
		quest::faction(223, -12);		#:: - Circle of Unseen Hands
		quest::faction(291, 5);			#:: + Merchants of Qeynos
		#:: Grant a moderate amount of experience
		quest::exp(800);
		#:: Create a hash for storing cash - 10 to 50cp
		my %cash = plugin::RandomCash(10, 50);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Reset item count
		$ItemCount = 0;
	}
	#:: Match three 13799 - Crow's Special Brew
	elsif (plugin::takeItems(13799 => 3)) {
		if ($ItemCount == 0) {
			quest::say("Oh! That's tasty. I guess I could handle a few more.");
			#:: Increment the item count variable
			$ItemCount++;
			$ItemCount++;
			$ItemCount++;
		}
		else {
			quest::say("Oohhh! My head. Stop the pub from spinning. I cannot make it to the Jaggedpine feeling like this. Please take this note to Te'Anara of the Treefolk. Here is a little silver for the favor. Thanks. Ooohhhh...");
			#:: Give a 18807 - Sealed Letter
			quest::summonitem(18807);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(262, 50);		#:: + Guards of Qeynos
			quest::faction(219, 7);			#:: + Antonius Bayle
			quest::faction(230, -7);		#:: - Corrupt Qeynos Guards
			quest::faction(223, -12);		#:: - Circle of Unseen Hands
			quest::faction(291, 5);			#:: + Merchants of Qeynos
			#:: Grant a moderate amount of experience
			quest::exp(800);
			#:: Create a hash for storing cash - 10 to 50cp
			my %cash = plugin::RandomCash(10, 50);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
			#:: Reset item count
			$ItemCount = 0;
		}
	}
	#:: Match two 13799 - Crow's Special Brew
	elsif (plugin::takeItems(13799 => 2)) {
		if ($ItemCount <= 1) {
			quest::say("Oh! That's tasty. I guess I could handle a few more.");
			#:: Increment the item count variable
			$ItemCount++;
			$ItemCount++;
		}
		else {
			quest::say("Oohhh! My head. Stop the pub from spinning. I cannot make it to the Jaggedpine feeling like this. Please take this note to Te'Anara of the Treefolk. Here is a little silver for the favor. Thanks. Ooohhhh...");
			#:: Give a 18807 - Sealed Letter
			quest::summonitem(18807);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(262, 50);		#:: + Guards of Qeynos
			quest::faction(219, 7);			#:: + Antonius Bayle
			quest::faction(230, -7);		#:: - Corrupt Qeynos Guards
			quest::faction(223, -12);		#:: - Circle of Unseen Hands
			quest::faction(291, 5);			#:: + Merchants of Qeynos
			#:: Grant a moderate amount of experience
			quest::exp(800);
			#:: Create a hash for storing cash - 10 to 50cp
			my %cash = plugin::RandomCash(10, 50);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
			#:: Reset item count
			$ItemCount = 0;
		}
	}
	#:: Match one 13799 - Crow's Special Brew
	elsif (plugin::takeItems(13799 => 1)) {
		if ($ItemCount <= 2) {
			quest::say("Oh! That's tasty. I guess I could handle a few more.");
			#:: Increment the item count variable
			$ItemCount++;
		}
		else {
			quest::say("Oohhh! My head. Stop the pub from spinning. I cannot make it to the Jaggedpine feeling like this. Please take this note to Te'Anara of the Treefolk. Here is a little silver for the favor. Thanks. Ooohhhh...");
			#:: Give a 18807 - Sealed Letter
			quest::summonitem(18807);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(262, 50);		#:: + Guards of Qeynos
			quest::faction(219, 7);			#:: + Antonius Bayle
			quest::faction(230, -7);		#:: - Corrupt Qeynos Guards
			quest::faction(223, -12);		#:: - Circle of Unseen Hands
			quest::faction(291, 5);			#:: + Merchants of Qeynos
			#:: Grant a moderate amount of experience
			quest::exp(800);
			#:: Create a hash for storing cash - 10 to 50cp
			my %cash = plugin::RandomCash(10,50);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
			#:: Reset item count
			$ItemCount = 0;
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
