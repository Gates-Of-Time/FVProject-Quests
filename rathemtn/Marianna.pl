sub EVENT_SAY { 
	if ($text=~/hail/i) {
		quest::say("Rodcet Nife welcomes you into our noble camp.  I am the keeper of the [Vambraces of Ro].");
	}
	elsif ($text=~/vambraces of ro/i) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("The mold will be offered to you when you have performed a task for the Temple of Life.  The oceans near our home are host to a plague..  the plague sharks!!  They have been infected with a deadly malady which has been turning up in the Qeynos Hills.  Kill the sharks and bring me two of their rotten shark portions as proof.");
		}
		else {
			quest::say("Foolish person!! The word is out amongst the followers of the Prime Healer not to trust you.");
		}
	}
}
sub EVENT_ITEM {
	#:: Match two 12310 - Rotten Shark Meat
	if (plugin::takeItems(12310 => 2)) {
		#:: Match if faction is Amiable or better
		if ($faction <= 4) {
			quest::say("You now own a mold for the Vambracers of Ro.  Go and ask Thomas of [Lord Searfire] for the final component.");
			#:: Give a 12300 - Mold of Ro Vambrace
			quest::summonitem(12300);
			#:: Ding!
			quest::ding();
			#:: Set factions
			quest::faction(341, 20); 	#:: + Priests of Life
			quest::faction(280, 6);		#:: + Knights of Thunder
			quest::faction(262, 10);	#:: + Guards of Qeynos
			quest::faction(221, -5);	#:: - Bloodsabers
			quest::faction(219, 3);		#:: + Antonius Bayle
		}
		else {
			quest::say("Foolish person!! The word is out amongst the followers of the Prime Healer not to trust you.");
			#:: Return two 12310 - Rotten Shark Meat
			quest::summonitem(12310);
			quest::summonitem(12310);
		}
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
