sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail Broodling! When you walk the halls of this tower, you should always display the status that you have earned within our ranks. It brings me pride to see the might of the brood displayed by one such as you while I reflect here in the tower. Do you have the tool of your caste with you at this time?");
	}
	elsif ($text=~/yes/i) {
		quest::say("Ah... Yes... very good! Continue to work at this pace and the enemies of the Greenmist will fall beneath the blades of Cazic-Thule! Now move out... To Victory!");
	}
	elsif ($text=~/no/i) {
		quest::emote("shakes his head and growls. 'That is not good, broodling... Not good at all. You will need to take this note and seek out the Toilmaster immediately. Read it on the way and hope that your incompetence can be overcome. We do have a pit for you, should this prove to be impossible.");
		#:: Give a 18271 - Ragged Book
		quest::summonitem(18271);
	}
}

sub EVENT_ITEM {
	#:: Match a 18272 - Rites of Exoneration, and a 24770 - Filled Penance Bag
	if (plugin::takeItems(18272 => 1, 24770 => 1)) {
		quest::emote("takes the bag and tome from you and in return gives you the item that you have been thinking of all of this time.  Lucky you... you have earned a second chance. Praise Cazic-Thule!");
		#:: Give a 5120 - Pawn's Khukri
		quest::summonitem(5120);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(440, 100);		#:: + Cabilis Residents
		quest::faction(441, 25);		#:: + Legion of Cabilis
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Create a hash for storing cash - 10 to 20cp
		my %cash = plugin::RandomCash(10, 20);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
