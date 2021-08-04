sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, $name. You have come to me searching for tasks and tasks I have. Would you judge yourself an [experienced heretic] or one who has [much to learn]?");
	}
	elsif ($text=~/much to learn/i) {
		quest::say("Very well, $name. I do have a task for you. There is an old and frail Erudite male who now lives in Toxxulia named Aglthin Dasmore. He has left the ways of Cazic-Thule and no longer practices our craft. He has been stripped of his power and wealth, so he spends his time fishing by the river. Our great Lord of Fear has decreed that his life is forfeit. Slay him, and bring me proof of the deed.");
	}
	elsif ($text=~/experienced heretic/i) {
		quest::say("Ah. Excellent. I have just the task for you, $name. In Kerra Ridge, there is a particular cat named Kirran Mirrah that we have been using to gather information about, well, certain aspects of cat society. He is no longer providing information for us and we have something for him that may encourage him to assist again. Ha! Hand him this sealed bag for us. It may just change his point of view. Hahaha!");
		#:: Give a 9968 - Smelly Sealed Bag
		quest::summonitem(9968);
	}
}

sub EVENT_ITEM {
	#:: Match a 9969 - Aglthin's Fishing Pole
	if (plugin::takeItems(9969 => 1)) {
		quest::say("Excellent, $name. You have proven yourself to be a true follower of Cazic-Thule. Continue on the path you have chosen, and you will surely become one of the mightiest in the land.");
		#:: Give a 13697 - Staff of the Abattoir Initiate
		quest::summonitem(13697);
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(265, 3);  		#:: + Heretics
		quest::faction(242, -3);  		#:: - Deepwater Knights
		quest::faction(254, -3); 		#:: - Gate Callers
		quest::faction(231, -3);  		#:: - Craftkeepers
		quest::faction(233, -3);  		#:: - Crimson Hands
		#:: Grant a small amount of experience
		quest::exp(100);
		#:: Create a hash for storing cash - 450 to 500cp
		my %cash = plugin::RandomCash(450,500);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 9967 - Karran's Head
	elsif (plugin::takeItems(9967 => 1)) {
		quest::say("Ah, it seems as if he was not a very cooperative kitty. So much for family. Oh well, take this token change as a show of my appreciation. Cazic-Thule shines on you in all his glorious fear this day, young one.");
		#:: Ding!
		quest::ding();
		#:: Set factions
		quest::faction(265, 5);  		#:: + Heretics
		quest::faction(242, -5);  		#:: - Deepwater Knights
		quest::faction(254, -5); 		#:: - Gate Callers
		quest::faction(231, -5);  		#:: - Craftkeepers
		quest::faction(233, -5);  		#:: - Crimson Hands
		#:: Grant a moderate amount of experience
		quest::exp(1000);
		#:: Create a hash for storing cash - 500 to 3000cp
		my %cash = plugin::RandomCash(500, 3000);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
