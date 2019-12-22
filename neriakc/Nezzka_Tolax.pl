sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 100 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 0);
}

sub EVENT_ENTER {
	#:: Match a 18757 - Tattered Note
	if (plugin::check_hasitem($client, 18757)) { 
		$client->Message(15,"Nezzka Tolax turns towards you. 'Welcome to the Lodge of the Dead. I am Nezzka Tolax and with my training you will learn to master the ways of the Shadowknight. Read the note in your inventory and hand it to me when you are ready to begin your training.'");
	}
}

sub EVENT_ITEM {
	#:: Match a 18757 - Tattered Note
	if (plugin::takeItems(18757 => 1)) {
		#:: Removed after 'Here, put this on.':  'Go find Ulraz, he'll beat you into shape.'
		quest::say("Hmmm, I hope you're tougher than you look. Here, put this on. There's no turning back now, punk. So, you'd better do well, got it?");
		#:: Ding!
		quest::ding();
		#:: Give a 13586 - Black Training Tunic*
		quest::summonitem(13586);
		#:: Set factions
		quest::faction(239, 100);		#:: + The Dead
		quest::faction(303, 15);		#:: + Queen Cristanos Thex
		quest::faction(278, -15);		#:: - King Naythox Thex
		quest::faction(275, -15);		#:: - Keepers of the Art
		quest::faction(245, -15);		#:: - Eldritch Collective
		quest::faction(1522, -200);		#:: - Primordial Malice
		#:: Grant a small amount of experience
		quest::exp(100);
	}
	#:: plugin::try_tome_handins(\%itemcount, $class, 'Shadowknight');
	#:: Return unused items
	plugin::returnUnusedItems();
}
