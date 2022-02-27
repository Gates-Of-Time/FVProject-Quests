sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Mind yourself within Cabilis. We will not tolerate any mischief. If you don't heed my warnings, you may be sentenced to the pit of the Crusaders of Greenmist. You don't want that! Also, you should always wear your robe when entering these walls. You do have your Drape of the Brood, correct?");
	}
	elsif ($text=~/yes/i) {
		quest::say("Very good. Please keep it on and bow before the will of the Cazic-Thule when entering these walls. Be off.");
	}
	elsif ($text=~/no/i) {
		quest::say("What is this?' the Nihilist barks in disbelief. 'You have lost your drape? This is unacceptable! Take this note and report to the Toilmaster at once. Read it on the way and praise Cazic-Thule for any mercy that you may be granted!");
		#:: Give a 18271 - Ragged Book
		quest::summonitem(18271);
	}
}

sub EVENT_ITEM {
	#:: Match a 18272 - Rites of Exoneration, and a 24770 - Filled Penance Bag
	if (plugin::takeItems(18272 => 1, 24770 => 1)) {
		quest::emote("takes the bag and tome from you and in return gives you the item that you have been thinking of all of this time. 'Lucky you. You have earned a second chance. Praise Cazic-Thule!'");
		#:: Give a 12407 - Drape of the Brood
		quest::summonitem(12407);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(443, 100);  	#:: + Brood of Kotiz
		quest::faction(441, 25);  	#:: + Legion of Cabilis
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Create a hash for storing cash - 100 to 200cp
		my %cash = plugin::RandomCash(100, 200);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
