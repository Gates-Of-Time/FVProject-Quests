sub EVENT_SAY { 
	if ($text=~/Hail/i) {
		quest::say("Hail, and welcome to Stormguard Hall, home to all great warriors! Are you also a [warrior of the Stormguard] or do you [follow another guild]?");
	}
	if ($text=~/warrior of the stormguard/i) {
		quest::say("As I thought. You do not appear to be one who relies on wits rather than brawn. No offense. I have word that a Stormguard on duty has deserted his post at one of the guardposts in the Butcherblocks. I want you to go and seek him out. He is Guard Bundin. Return his Stormguard axe to me, along with his head. There shall be no cowards in the Stormguard!!");
	}
	if ($text=~/follow another guild/i) {
		quest::say("Then go to your guild. This is the hall of the dwarven warriors - not a place for common folk to lounge around.");
	}
}

sub EVENT_ITEM {
	#:: Match a 12156 - Dwarf Head and a 5014 - Rusty Axe
	if (plugin::takeItems(12156 => 1, 5014 => 1 )) {
		quest::say("I shall display this in the guard hall. Let it be a warning to all those who dare to run from battle. As for you, that was splendid work, but next time, remember to wrap decapitated heads in something drip-proof. Those stains will never come out! Oh yes, and here is your reward.");
		#:: Ding!
		quest::ding();
		#:: Reward a 5034 - Bronze Scimitar, 7013 - Bronze Rapier, 6024 - Bronze Morning Star, 5027 - Bronze Long Sword, 6019 - Bronze Mace
		quest::summonitem(quest::ChooseRandom(5034,7013,6024,5027,6019));
		#:: Set Factions
		quest::faction(274, 2);			#:: + Kazon Stormhammer
		quest::faction(312, 15);		#:: + Storm Guard
		quest::faction(293, 2);			#:: + Miners Guild 249
		quest::faction(5025, 3);		#:: + Kaladim Merchants
		quest::faction(232, -3);		#:: - Craknek Warriors
		#:: Create a hash for storing cash - 1600 to 1700cp
		my %cash = plugin::RandomCash(1600,1700);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Grant a moderate amount of experience
		quest::exp(5000);
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Warrior');
	#:: Return unused items
	plugin::returnUnusedItems();
}
