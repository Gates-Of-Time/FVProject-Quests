sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome to the treetops and the home of Faydark's Champions. We are the skilled rangers of the Faydarks. You are safe in Kelethin. but watch yourself upon the forest floor. I hear the [blue meanies] have been on the rise.");
	}
	elsif ($text=~/blue meanies/i) {
		quest::say("That is a little name I have given the Crushbone orcs. It appears they have increased their numbers. The Emerald Warriors are charged with our defense against them. We rangers are to seek out the [orc saboteurs].");
	}
	elsif ($text=~/orc saboteurs/i) {
		quest::say("As others move to battle the orc armies, we have word that the orc pawns have been sent into the woods to damage the great trees which support Kelethin. We shall employ the talents of our young rangers to halt their efforts. I currently seek those who will [hunt the orc pawns].");
	}
	elsif ($text=~/hunt the orc pawns/i) {
		quest::say("Go to the forest floor and seek out the orc pawns. Within their ranks can sometimes be found orc hatchetmen. They carry orc hatchets which you must return and I shall reward you for every two orc hatchets and perhaps offer you a weapon in return, should we have any to spare at the time.");
	}
	elsif ($text=~/crushbone allies/i) {
		quest::say("It seems the orcs have allied themselves with the wicked Teir'Dal. We know of this through reports of a Teir'Dal presence within Crushbone. We must [intercept the Crushbone runners] and find a reason for their union.");
	}
	elsif ($text=~/intercept the crushbone runners/i) {
		quest::say("Go to the Butcherblocks. You stand a greater chance of finding the runners there. I shall pay a bounty for all returned runner pouches.");
 	}
}

sub EVENT_ITEM {
	#:: Match two 12108 - Orc Hatchet
	if (plugin::takeItems(12108 => 2)) {
		quest::say("Fantastic work!! Your actions shall earn you the respect of all Fier'Dal!  Take this as a small bounty for your deed.  We have heard of [Crushbone allies] who wish our demise.");
		#:: Give a random reward:  5047 - Tarnished Scimitar, 5048 - Tarnished Bastard Sword, 7032 - Cast-Iron Rapier
		quest::summonitem(quest::ChooseRandom(5047,5048,7032));
		#:: Ding!
		quest::ding();
		#:: Create a hash for storing cash - 10 to 20cp
		my %cash = plugin::RandomCash(10,20);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(246, 10);  		#:: + Faydark's Champions
		quest::faction(279, 2);			#:: + King Tearis Thex
		quest::faction(226, 2);			#:: + Clerics of Tunare
		quest::faction(310, 2);			#:: + Soldiers of Tunare
		quest::faction(234, -2);		#:: - Crushbone Orcs
		#:: Grant a small amount of experience
		quest::exp(800);
	}
	#:: Match one 12108 - Orc Hatchet
	elsif (plugin::takeItems(12108 => 1)) {
		quest::say("I expect to receive TWO orc hatchets.");
		#:: Give a 12108 - Orc Hatchet
		quest::summonitem(12108);
	}
	#:: Match a 18840 - Sealed Letter (Letter To King Naythox Thex)
	elsif (plugin::takeItems(18840 => 1)) {
		quest::say("Yes. A recent report has proven this to be true. An evil alliance has been made. We shall soon need many more experienced adventurers such as yourself. For now, take this reward and strengthen your skills.");
		#:: Give a 8003 - Longbow
		quest::summonitem(8003);
		#:: Ding!
		quest::ding();
		#:: Create a hash for storing cash - 900 to 2000cp
		my %cash = plugin::RandomCash(900,2000);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(246, 30);  		#:: + Faydark's Champions
		quest::faction(279, 7);			#:: + King Tearis Thex
		quest::faction(226, 7);			#:: + Clerics of Tunare
		quest::faction(310, 7);			#:: + Soldiers of Tunare
		quest::faction(234, -7);		#:: - Crushbone Orcs
		#:: Grant a moderate amount of experience
		quest::exp(1800);
	}
	#:: Match a 13226 - Runner Pouch
	elsif (plugin::takeItems(13226 => 1)) {
		quest::say("Good work. We shall cut off correspondence between these two. It is for the best. Remember, if you find any notes to Neriak from the ambassador in Crushbone, give them to me.");
		#:: Give a 2140 - Raw-hide Tunic
		quest::summonitem(2140);
		#:: Ding!
		quest::ding();
		#:: Create a hash for storing cash - 900 to 2000cp
		my %cash = plugin::RandomCash(900,2000);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(246, 20);  	#:: + Faydark's Champions
		quest::faction(279, 5);		#:: + King Tearis Thex
		quest::faction(226, 5);		#:: + Clerics of Tunare
		quest::faction(310, 5);		#:: + Soldiers of Tunare
		quest::faction(234, -5);	#:: - Crushbone Orcs
		#:: Grant a moderate amount of experience
		quest::exp(1800);
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Ranger');
	#:: Return unused items
	plugin::returnUnusedItems();
}
