sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("look's upon you smugly.  'And what are you, some sort of adventurer? Bah!! You will be shaken by the first undead you come across. Wetting your pant's you shall be. Ha Ha!! I doubt you could even [kill the decaying skeletons]!'");
	}
	elsif ($text=~/kill the decaying skeletons/i) {
		quest::say("You kill skeletons?!! I think not!! They will bounce you with no trouble at all. Ten silvers says you cannot collect four bone chips!! When Velious melts!! Hah!");
	}
}

sub EVENT_ITEM {
	#:: Match four 13073 - Bone Chips
	if (plugin::takeItems(13073 => 4)) {
		quest::emote("gasp's in astonishment.  'Wha...? This!! But... I... Why you... I oughta.. All right!! A bet is a bet. Here you go. A few silver piece's for your achievement. What?!! You thought I would give you ten? Fat chance! Now get lost or I will haul you in for impersonating a froglok.'");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(441, 1);		#:: + Legion of Cabilis
		quest::faction(440, 1);		#:: + Cabilis Residents
		quest::faction(445, 1);		#:: + Scaled Mystics
		quest::faction(442, 1);		#:: + Crusaders of Greenmist
		quest::faction(444, 1);		#:: + Swifttails
		#:: Grant a small amount of experience
		quest::exp(250);
		#:: Create a hash for storing cash - 40 to 100cp
		my %cash = plugin::RandomCash(40, 100);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	} 
	#:: Return unused items
	plugin::returnUnusedItems();
}
