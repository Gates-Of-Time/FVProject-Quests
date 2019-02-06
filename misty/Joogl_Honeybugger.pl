sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello. I would shake your hand, but it would [" . quest::saylink("hurt") . "]. Ooooh! Owwy!");
	}
	elsif ($text=~/hurt/i) {
		quest::say("I was attacked by the bixies. They swarmed on me!! I think I got too near their queen. I need that honey to make a living! Get me a bandage and I will tell you where all their worker bee's buzz around.");
	}
	elsif ($text=~/honeycomb/i) {
		quest::say("If you're looking for the honeycombs, I don't have any right now. I have been unable to get any since I was attacked by the little [" . quest::saylink("buggers") . "]. I will tell you where to get some if you will only get me a bandage for my bites.");
	}
	elsif ($text=~/buggers/i) {
		quest::say("I was attacked by the bixies. They swarmed on me!! I think I got too near their queen. I need that honey to make a living! Get me a bandage and I will tell you where all their worker bees buzz around.");
	}
}

sub EVENT_ITEM {
	#:: Match four 13009 - Bandages
	if (plugin::takeItems(13009 => 4)) {
		quest::say("Oh thank you, $name. If you are ever going to gather bixie honeycomb's pray you do not run into the queen. The only way I know of collecting the honey is by intercepting the drone's and taking the honeycomb's they sometime's carry. Good luck!!");
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(40);
		#:: Set factions
		quest::faction(218, 4);		#:: + Merchants of Rivervale
		quest::faction(77, 4);		#:: + Deeppockets
		quest::faction(133, 4);		#:: + Guardians of the Vale
		quest::faction(208, 4);		#:: + Mayor Gubbin
		quest::faction(48, -4);		#:: - Coalition of Tradefolk Underground
	}
	#:: Match three 13009 - Bandages
	elsif (plugin::takeItems(13009 => 3)) {
		quest::say("Oh thank you, $name. If you are ever going to gather bixie honeycomb's pray you do not run into the queen. The only way I know of collecting the honey is by intercepting the drone's and taking the honeycomb's they sometime's carry. Good luck!!");
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(30);
		#:: Set factions
		quest::faction(218, 3);		#:: + Merchants of Rivervale
		quest::faction(77, 3);		#:: + Deeppockets
		quest::faction(133, 3);		#:: + Guardians of the Vale
		quest::faction(208, 3);		#:: + Mayor Gubbin
		quest::faction(48, -3);		#:: - Coalition of Tradefolk Underground
	}
	#:: Match two 13009 - Bandages
	elsif (plugin::takeItems(13009 => 2)) {
		quest::say("Oh thank you, $name. If you are ever going to gather bixie honeycomb's pray you do not run into the queen. The only way I know of collecting the honey is by intercepting the drone's and taking the honeycomb's they sometime's carry. Good luck!!");
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(20);
		#:: Set factions
		quest::faction(218, 2);		#:: + Merchants of Rivervale
		quest::faction(77, 2);		#:: + Deeppockets
		quest::faction(133, 2);		#:: + Guardians of the Vale
		quest::faction(208, 2);		#:: + Mayor Gubbin
		quest::faction(48, -2);		#:: - Coalition of Tradefolk Underground
	}
	#:: Match a 13009 - Bandages
	elsif (plugin::takeItems(13009 => 1)) {
		quest::say("Oh thank you, $name. If you are ever going to gather bixie honeycomb's pray you do not run into the queen. The only way I know of collecting the honey is by intercepting the drone's and taking the honeycomb's they sometime's carry. Good luck!!");	
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(10);
		#:: Set factions
		quest::faction(218, 1);		#:: + Merchants of Rivervale
		quest::faction(77, 1);		#:: + Deeppockets
		quest::faction(133, 1);		#:: + Guardians of the Vale
		quest::faction(208, 1);		#:: + Mayor Gubbin
		quest::faction(48, -1);		#:: - Coalition of Tradefolk Underground
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
