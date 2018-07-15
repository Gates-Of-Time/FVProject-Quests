sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, friend!! Nice to meet you. I see you enjoy barging into other people's rooms. No problem. I enjoy the company. What are you looking for?");
	}
	if ($text=~/treant wood/i) {
		quest::say("So you want a treant shards? I have them. If you want them I will trade you for them. Hmm.. I will take 2 gold and how about a nifty Faydark Champion Tunic. That is all I want. No more, no less.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13536 Dirty Green Tunic and 2 Gold 
	if (plugin::check_handin(\%itemcount, 13536 => 1, $gold == 2)) {
		quest::say("Thanks, friend. I have run a long way to get here in time. Mostly at night. I lost my lantern in a card game in Highkeep.");
		#:: Randomly choose from Wooden Shards 90% chance, or A Wooden Heart 10% chance
		quest::summonitem(quest::ChooseRandom(13824, 13824, 13824, 13824, 13824, 13824, 13824, 13824, 13824, 12334));
		#:: Give a small amount of xp
		quest::exp(500);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(99,1); 		#:: + Faydark's Champions
		quest::faction(178,1); 		#:: + King Tearis Thex
		quest::faction(43,1); 		#:: + Clerics of Tunare
		quest::faction(304,1); 		#:: + Soldiers of Tunare
		quest::faction(63,-1); 		#:: - Crushbone Orcs
	}
	plugin::return_items(\%itemcount);
}
