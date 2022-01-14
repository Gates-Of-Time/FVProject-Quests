sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, friend!! Nice to meet you. I see you enjoy barging into other people's rooms. No problem. I enjoy the company. What are you looking for?");
	}
	elsif ($text=~/treant wood/i) {
		#:: Match if faction is indifferent or better
		if ($faction <= 5) {
			quest::say("You are a new courier from the Faydarks. I am sorry I did not stay closer to the docks. I hear that part of Freeport is dangerous and is filled with many rogues. I shall require a new Small Lantern in trade for the Treant Wood.");
		}
		else {
			quest::say("Your ways are considered vile to Faydark's Champions. Leave before my rage overcomes my restraint.");
		}
	}
}

sub EVENT_ITEM {
	#:: Match a 13003 - Small Lantern
	if (plugin::takeItems(13003 => 1)) {
		quest::say("Thanks, friend. I have run a long way to get here in time. Mostly at night. I lost my lantern in a card game in Highkeep.");
		#:: Randomly choose from Wooden Shards 90% chance, or A Wooden Heart 10% chance
		quest::summonitem(quest::ChooseRandom(13824, 13824, 13824, 13824, 13824, 13824, 13824, 13824, 13824, 12334));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(246, 1); 		#:: + Faydark's Champions
		quest::faction(279, 1); 		#:: + King Tearis Thex
		quest::faction(226, 1); 		#:: + Clerics of Tunare
		quest::faction(310, 1); 		#:: + Soldiers of Tunare
		quest::faction(234, -1); 		#:: - Crushbone Orcs
		#:: Grant a small amount of experience
		quest::exp(500);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
