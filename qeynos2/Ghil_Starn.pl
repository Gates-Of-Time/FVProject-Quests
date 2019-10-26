sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("I'm Ghil.. I used to run a small business before I hooked up with Hanns. Together, we muscled our competition out of Qeynos. But I'm getting too old for the rough stuff anymore, so I just lay low down here and peddle my goods. Anyway, I gotta get back to work and pack up this shipment for ol' [Denny-boy]");
	}
	elsif ($text=~/denny/i) {
		quest::say("Den Magason works for ol' [Captain Rohand] down at the Qeynos docks. I need to find someone to take a [package] to him, so it can be shipped to Erudin.");
	}
	elsif ($text=~/captain rohand/i) {
		quest::say("Captain Rohand runs the Mermaid's Lure and trades goods with the sea merchants from Odus.");
	}
	elsif ($text=~/package/i) {
		quest::say("I need someone to take this package to Den. He'll make sure it goes out on the next ship to Odus. I owe him a small favor, too.. So when you meet up with him, I need you to do whatever you can to help him out. Do a good job.");
		#:: Give a 13784 - Package for Den
		quest::summonitem(13784);
	}
}

sub EVENT_ITEM {
	#:: Match a 18796 - Note for Ghil
	if (plugin::takeItems(18796 => 1)) {
		quest::say("Ah, good job, $name. It's good to know that I can trust you to get the job done. Here, take this for your efforts. This is a pair of gloves that we hand out to some of our more trusted members. Keep up the good work.");
		#:: Give a 1049 - Brown Leather Gloves
		quest::summonitem(1049);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(223, 100);	#:: + Circle Of Unseen Hands
		quest::faction(291, -15);	#:: - Merchants of Qeynos
		quest::faction(230, 15);	#:: + Corrupt Qeynos Guards
		quest::faction(262, -15);	#:: - Guards of Qeynos
		quest::faction(273, 10);	#:: + Kane Bayle
		#:: Grant a moderate amount of experience
		quest::exp(2000);
		#:: Create a hash for storing cash - 600 to 800cp
		my %cash = plugin::RandomCash(600,800);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
