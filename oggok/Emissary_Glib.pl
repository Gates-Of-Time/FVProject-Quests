sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Gloop.. Are you the one? Who sent you?");
	}
	if ($text=~/greenblood shaman sent me|greenblood shamen sent me/i) {
		quest::say("Gloop.. Good. I am the secret emissary of the frogloks of Guk. I have come to help your community, provided, that is, that you help mine. Gloop.. I want you to track down and kill the troll hunters called 'slayers.' They are capturing our foragers in the swamps. Return their slayer necklaces to me and I shall pay you, but most important, find the slayer captain. Bring me his captain's necklace and I shall give you a secret. I must leave soon. If you need me, just ask Marda where I am.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13369 - Frog Eye Necklace
	if (plugin::takeItems(13369 => 1)) {
		quest::say("Good work. That is one less troll slayer. My people shall learn of your good deed. Please search for the slayer captain. He must be stopped.");
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(200);
		#:: Create a hash for storing cash - 10 to 80cp
		my %cash = plugin::RandomCash(10,80);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set faction
		quest::faction(374,1);		#:: + Oggok Citizens
	}
	#:: Match a 13370 - Frog Eye Necklace
	elsif (plugin::takeItems(13370 => 1)) {
		quest::say("'Oooh!! .. You have dispatched the slayer captain. It will take them time to reorganize the slayers. During this time the froglok foragers can gather more provisions for Guk. Please take this as a token of my people's appreciation. Your standing with my brethren has grown. As for Marda's information.. within Grobb lies my aide, Groak. He was captured. Tell him Glib sent you.");
		#:: Give a random reward: 17928 - Forager Bag, 13371 - Hopper Spear
		quest::summonitem(quest::ChooseRandom(17928,13371));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(200);
		#:: Create a hash for storing cash - 10 to 80cp
		my %cash = plugin::RandomCash(10,80);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set faction
		quest::faction(374,2);		#:: + Oggok Citizens
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
