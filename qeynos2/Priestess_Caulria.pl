sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome to the holy Temple of Life. Your presence shows an interest in our ways. We are the followers of the [Prime Healer] and would gladly open our arms to any who [serve Rodcet Nife]. Do we not all owe our lives to the sustaining force of the Prime Healer?");
	}
	elsif (($text=~/^prime healer$/i) || ($text=~/^rodcet nife$/i)) {
		quest::say("The Prime Healer is Rodcet Nife. The one whose power flows through your body. He is the air that you breathe. To serve Him is to serve every living creature. Do you wish to [serve the Prime Healer] or do you [need more time for contemplation]?");
	}
	elsif ($text=~/serve/i) {
		#:: Match if faction is Amiable or better
		if ($faction < 5) {
			quest::say("Then you are commanded by the Prime Healer to go into the surrounding terrirories of Qeynos and destroy any rabid creatures you may encounter. There will not be an outbreak of disease within reach of the Temple of Life, see to it! Bring me pelts of any rabid beast as proof of your good deed.");
		}
		else {
			quest::say("The Temple of Life smiles upon you, friend.. but such a delicate matter can only be entrusted to our most loyal members.");
		}
	}
	elsif ($text=~/fleshy orb/i) {
		#:: Match if faction is Amiable or better
		if ($faction < 5) {
			quest::say("'I do not know what you are talking about. Let me see it.");
		}
		else {
			quest::say("The Temple of Life smiles upon you, friend.. but such a delicate matter can only be entrusted to our most loyal members.");
		}
	}
	elsif ($text=~/contemplation/i) {
		quest::say("I understand. Sometimes a person can be filled with the lies of so many other false deities that he cannot see the truth when it lies in front of him.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13949 - Diseased Wolf Pelt
	if (plugin::takeItems(13949 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction < 5) {
			quest::say("I see you have rid our land of a beast tainted with the blood of Bertoxxulous. The Prime Healer shall look favorably upon your soul. Here is our thanks and just in case the beast may have bitten you...");
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(341, 5);			#:: + Priests of Life
			quest::faction(280, 1);			#:: + Knights of Thunder
			quest::faction(262, 2);			#:: + Guards of Qeynos
			quest::faction(221, -1);		#:: - Bloodsabers
			quest::faction(219, 1);			#:: + Antonius Bayle
			#:: Grant a small amount of experience
			quest::exp(500);
			#:: Cast spell 213 - Counteract Disease on the player who triggered the event
			$npc->CastSpell(213,$userid);
		}
		else {
			quest::say("The Temple of Life smiles upon you, friend.. but such a delicate matter can only be entrusted to our most loyal members.");
			#:: Return a 13949 - Diseased Wolf Pelt
			quest::summonitem(13949);
		}
	}
	#:: Match a 13298 - Putrid Bear Hide
	if (plugin::takeItems(13298 => 1)) {
		#:: Match if faction is Amiable or better
		if ($faction < 5) {
			quest::say("Oh dear. The disease has spread to the realm of the Treefolk. It must have been difficult to kill such a large and rabid beast. Here. Take one of my personal scrolls as thanks for such a brave act of devotion. I pray you can use it. If not, then perhaps one of your fellow adventurers can."); 
			#:: Give a 15226 - Spell: Endure Disease
			quest::summonitem(15226);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(341, 20);		#:: + Priests of Life
			quest::faction(280, 6);			#:: + Knights of Thunder
			quest::faction(262, 10);		#:: + Guards of Qeynos
			quest::faction(221, -5);		#:: - Bloodsabers
			quest::faction(219, 3);			#:: + Antonius Bayle
			#:: Grant a moderate amount of experience
			quest::exp(2000);
			#:: Create a hash for storing cash - 1500 to 2500cp
			my %cash = plugin::RandomCash(1500,2500);
			#:: Grant a random cash reward
			quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
			#:: Cast spell 213 - Counteract Disease on the player who triggered the event
			$npc->CastSpell(213,$userid);
		}
		else {
			quest::say("The Temple of Life smiles upon you, friend.. but such a delicate matter can only be entrusted to our most loyal members.");
			#:: Return a 13298 - Putrid Bear Hide
			quest::summonitem(13298);
		}
	}
	#:: Match a 13950 - Fleshy Orb
	elsif (plugin::takeItems(13950 => 1)) {
		quest::say("This is odd. This could explain the increase in the number of beasts within the lands surrounding Qeynos. You must take this to Freeport. Here. You must speak with Lorme Tredore. Show him this pellet. You had best gear up for the trip. Freeport is very far away. Here is some gold. Outfit yourself at our expense.");
		#:: Give a 13951 - Fleshy Orb
		quest::summonitem(13951);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(341, 10);		#:: + Priests of Life
		quest::faction(280, 3);			#:: + Knights of Thunder
		quest::faction(262, 5);			#:: + Guards of Qeynos
		quest::faction(221, -2);		#:: - Bloodsabers
		quest::faction(219, 1);			#:: + Antonius Bayle
		#:: Grant a moderate amount of experience
		quest::exp(1000);
		#:: Create a hash for storing cash - 300 to 600cp
		my %cash = plugin::RandomCash(300,600);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
