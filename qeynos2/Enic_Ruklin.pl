sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail! These are the sacred grounds of the Temple of Life. Please do not cause any disturbances while on our grounds. I would hate to have to hurt you. In the name of Rodcet Nife, of course. Now excuse me, I have a [problem] to attend to.");
	}
	elsif ($text=~/problem/i) {
		quest::say("I have been charged with the duty of protecting the [Pool of Jahnda] and its fish. Now it seems as though a beast by the name of [Frostbite] has slurped up another one of the sacred fish, the [Koalindl]. If I do not get the little corpse of this fish back, I could be in trouble. Any respected member of this temple who aids me will be rewarded greatly.");
	}
	elsif ($text=~/pool of jahnda/i) {
		quest::say("The Pool of Jahnda is not meant for public use. It is a sacred pool created for the [Koalindl]. They say that, every so often, the Prime Healer visits our plane in the guise of a Koalindl. He swims in our pool.");
	}
	elsif ($text=~/koalindl/i) {
		quest::say("The fish called Koalindl were a gift to Priestess Jahnda from the Prime Healer. They come from the plane of health. To kill one Koalindl is to bring the wrath of Rodcet Nife and the Priests of Life down upon you.");
	}
	elsif ($text=~/frostbite/i) {
		quest::say("Frostbite is a dog. He belongs to some barbarian who visits the city every so often. I know not where they are from. I cannot see them coming from Halas. Their visits are too frequent.");
	}
	elsif (($text=~/donation to the temple of thunder/i) || ($text=~/donate to the temple of thunder/i)) {
		quest::say("I would be glad to help you out. The Knights of Thunder are a respected order.");
		#:: Give a 13293 - Donation
		quest::summonitem(13293);
	}
}

sub EVENT_ITEM {
	#:: Match a 13383 - Koalindl Fish
	if (plugin::takeItems(13383 => 1)) {
		quest::say("Thank you my friend! Every Koalindl must be accounted for, even the dead. Rodcet Nife shall be pleased and I shall reward you. Nothing much. Just a token of gratitude.");
		#:: Grant a random reward:  13297 - Band of Rodcet Nife, 13296 - Prayer Beads
		quest::summonitem(quest::ChooseRandom(13297, 13296));
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(341, 100);		#:: + Priests of Life
		quest::faction(280, 30);		#:: + Knights of Thunder
		quest::faction(262, 50);		#:: + Guards of Qeynos
		quest::faction(221, -25);		#:: - Bloodsabers
		quest::faction(219, 15);		#:: + Antonius Bayle
		#:: Create a hash for storing cash - 1200 to 1300cp
		my %cash = plugin::RandomCash(1200,1300);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Grant a small amount of experience
		quest::exp(400);
	}	
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
	quest::say("The Priests of Life will cleanse this city of evil ones like you soon enough. May Rodcet have mercy on all our souls.");
}
