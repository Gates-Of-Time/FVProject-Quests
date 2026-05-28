sub EVENT_ITEM {
	#:: Match four 125 - FINDITEM
	if (plugin::takeItems(125 => 4)) {
		quest::say("Thank you.");
		#:: Give a 17054 - Deck of Spontaneous Generation
		quest::summonitem(17054);
		#:: Grant a tiny amount of experience
		quest::exp(100);
	}
	#:: Match four 126 - FINDITEM
	elsif (plugin::takeItems(126 => 4)) {
		quest::say("Thank you.");
		#:: Give a 17054 - Deck of Spontaneous Generation
		quest::summonitem(17054);
		#:: Grant a tiny amount of experience
		quest::exp(100);
	}
	#:: Match four 127 - FINDITEM
	elsif (plugin::takeItems(127 => 4)) {
		quest::say("Thank you.");
		#:: Give a 17054 - Deck of Spontaneous Generation
		quest::summonitem(17054);
		#:: Grant a tiny amount of experience
		quest::exp(100);
	}
	#:: Match four 128 - FINDITEM
	elsif (plugin::takeItems(128 => 4)) {
		quest::say("Thank you.");
		#:: Give a 17054 - Deck of Spontaneous Generation
		quest::summonitem(17054);
		#:: Grant a tiny amount of experience
		quest::exp(100);
	}
	#:: Match a 161 - FINDITEM
	elsif (plugin::takeItems(161 => 1)) {
		quest::say("Thank you.");
		#:: Give a 17054 - Deck of Spontaneous Generation
		quest::summonitem(17054);
		#:: Grant a tiny amount of experience
		quest::exp(100);
	}
	else {
		quest::say("I have no interest in this.");
	}

	#:: Return unused items
	plugin::returnUnusedItems();
}
