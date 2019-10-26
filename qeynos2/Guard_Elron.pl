sub EVENT_AGGRO {
	quest::say("Time to die, $name!");
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings. I am sorry but I can't concentrate on my post and talk to you at the same time. Especially when I should be out searching for [Lucie]..  Please excuse me.");
	}
	elsif ($text=~/lucie/i) {
		quest::say("Lucie is my only daughter. Her mother was killed by gnolls a little over a year ago, now Lucie is missing. Ton Firepride said he saw her playing in the south pond.  I have told her a million times to stay out of the aqueducts..  She never listens..  Now I spend every free moment searching for my little girl, if only I could find some clue to her fate. Well, I need to get back to work. Fare well, $name.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13713 - Small Tattered Dress
	if (plugin::takeItems(13713 => 1)) {
		quest::say("Oh dear.. no.. no.. I warned her about the aqueducts.. I warned her.. I coudn't watch her every minute of the day, could I? Oh Lucie.. Why didn't you listen to me? Here, take this. It belonged to her mother. She always said that in times of need, it gave her courage to go on.. Thank you so much for your efforts.");
		#:: Give a 13188 - Golden Locket
		quest::summonitem(13188);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(262, 5);		#:: + Guards of Qeynos
		quest::faction(219, 1);		#:: + Antonius Bayle
		quest::faction(230, -1);	#:: - Corrupt Qeynos Guards
		quest::faction(223, -1);	#:: - Circle of Unseen Hands
		quest::faction(291, 1);		#:: + Merchants of Qeynos
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Create a hash for storing cash - 20 to 50cp
		my %cash = plugin::RandomCash(20,50);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
