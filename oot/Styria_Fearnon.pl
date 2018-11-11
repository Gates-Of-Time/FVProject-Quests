sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Welcome to my island. I always welcome visitors, but I would prefer that your stay not last too long. My warriors are sometimes tempted by others. That is why they all wear purity belts. I should warn you, also, to be on the lookout for the [" . quest::saylink("Pirates of Gunthak") . "].");
	}
	if ($text=~/pirates of gunthak/i) {
		quest::say("The Pirates of Gunthak have been stranded on a nearby island. Their ship was sunk by some unknown water beast. They now attempt to take over this island and commandeer the first ship they encounter. I am looking for brave [" . quest::saylink("adventurers") . "] to hunt the rogues. Do you wish to hunt the pirates or are you waiting for the next ship?");
	}
	if ($text=~/adventurers/i) {
		quest::say("Go and seek them out. They are on a nearby island. You will have to swim if you have no boat. Each pirate wears the pirate earring of the Pirates of Gunthak. I shall reward you for each earring you return to me. They have also stolen the Bracers of Erollisi from us. Their leader may have the pair. Return it to me and I shall be very appreciative.");
	}
	if ($text=~/sentry xyrin/i) {
		quest::say("What? Why are you so concerned for Sentry Xyrin? She returned to Freeport last night right before.. Oh!! Oh, dear!! Right before the storm hit. If she did not make it back to Freeport. I fear she has drowned or is shipwrecked upon one of the nearby islands!! You must find her!");
		#:: Spawn Ocean of Tears >> Sentry_Xyrin (69132)
		quest::unique_spawn(69132,0,0,-7332,-612,1,90);
	}
}

sub EVENT_ITEM {
	#:: Match a 13337 - Bracers of Erollisi
	if (plugin::takeItems(13337 => 1)) {
		quest::say("Oh!! Thank you!! We are so grateful to you. I offer you this as reward. It is one of the dwarven smith's finest works");
		#:: Give a 13339 - Aviak Feather, 13342 - Conch Shell, 7017 - Fishing Spear, 13340 - Kiola Nut, 5007 - Axe, 5008 - Broad Sword
		quest::summonitem(quest::ChooseRandom(13339,13342,7017,13340,5007,5008));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(250);
		#:: Create a hash for storing cash - 600 to 700cp
		my %cash = plugin::RandomCash(600,700);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(99,5);		#:: + Faydarks Champions
		quest::faction(178,5);		#:: + King Tearis Thex
		quest::faction(304,5);		#:: + Soldiers of Tunare
		quest::faction(43,5);		#:: + Clerics of Tunare
		quest::faction(63,-10);		#:: - Crushbone Orcs
	}
	#:: Match a 13336 - Pirate's Earring
	if (plugin::takeItems(13336 => 1)) {
		quest::say("Good work. I see you have removed that retchid pirate from here.");
		#:: Give a 13339 - Aviak Feather, 13342 - Conch Shell, 7017 - Fishing Spear, 13340 - Kiola Nut
		quest::summonitem(quest::ChooseRandom(13339,13342,7017,13340));
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(250);
		#:: Create a hash for storing cash - 600 to 700cp
		my %cash = plugin::RandomCash(600,700);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(99,5);		#:: + Faydarks Champions
		quest::faction(178,5);		#:: + King Tearis Thex
		quest::faction(304,5);		#:: + Soldiers of Tunare
		quest::faction(43,5);		#:: + Clerics of Tunare
		quest::faction(63,-10);		#:: - Crushbone Orcs
	}
	#:: Return unused items
	plugin::return_items(\%itemcount);
}
