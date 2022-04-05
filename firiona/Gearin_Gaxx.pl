sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Welcome, friend!  If armor is what you seek, let the house of Gaxx provide you with the finest.  Our metalwork is second to none.  Every now and again we may even create [rare armor] for the general public to purchase.");
	}
	elsif ($text=~/rare armor/i) {
		quest::say("I have found many exotic materials in Kunark with which I can create rare armor.  I currently am working on the [Guard of Ik] and the [Hate Tail Guard] shields.  I have no armor as of yet, but I am experimenting with new designs.");
	}
	elsif ($text=~/guard of ik/i) {
		quest::say("The Guards of Ik are made from shields found in the jungles. I would be selling them if it were not for the unfortunate fact that the shields are spectral and vanish overnight. Another bit of bad news is that the formula I was working on to stabilize the essence of the metal was stolen by local pirates. I need two more shields and my formula. Bring these to me and I shall not charge you.");
	}
	elsif ($text=~/hate tail guard/i) {
		quest::say("I can create the Hate Tail Guard using both metal and scorpion carapaces. I have the metal. I will make you one for the price of 100 gold coins - I accept only gold. I will also need two flawless carapaces from giant hate tail scorpions.");
	}
}

sub EVENT_ITEM {
	#:: Match a 12883 - Trooper Shield, and a 12971 - Scribbled Note
	if (plugin::takeItems(12883 => 1, 12971 => 1)) {
		quest::emote("places the formula in a box which appears to have similar copies in it. Thank you! I can now reward you with this Guard of Ik shield I had lying around.");
		#:: Give a 12972 - Guard of Ik
		quest::summonitem(12972);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(248, 5);		#:: + Inhabitants of Firiona Vie
		quest::faction(326, 3);		#:: + Emerald Warriors
		quest::faction(312, 3);		#:: + Storm Guard
		quest::faction(441, -1);	#:: - Legion of Cabilis
		quest::faction(313, -1);	#:: - Pirates Of Gunthak
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Match a 12883 - Trooper Shield
	elsif (plugin::takeItems(12883 => 1)) {
		quest::say("Hey?! We had a deal! I get two ik shields and my ik formula!");
		#:: Give a 12883 - Trooper Shield
		quest::summonitem(12883);
	}
	#:: Match a 12971 - Scribbled Note
	elsif (plugin::takeItems(12971 => 1)) {
		quest::say("Hey?! We had a deal! I get two ik shields and my ik formula!");
		#:: Give a 12971 - Scribbled Note
		quest::summonitem(12971);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
