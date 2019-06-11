sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("How are you? Welcome to the Academy of Arcane Science. Please feel free to roam. May knowledge be your goal. Be you a [" . quest::saylink("fellow scientist") . "] or visitor, I am sure you will find whatever you seek.");
	}
	elsif ($text=~/fellow scientist/i) {
		quest::say("That is good. I hope you can handle the knowledge of arcane science. Some have gone mad conducting research. Such a person is [" . quest::saylink("Lydl Mastat") . "].");
	}	
	elsif ($text=~/lydl mastat/i) {
		quest::say("Lydl Mastat is nothing more than a young apprentice of mine. He went mad working on a formula for deep water breathing. He now roams the outskirts of Freeport boasting of power he does not have. Someone should [" . quest::saylink("teach Lydl a lesson") . "].");
	}	
	elsif ($text=~/teach Lydl a lesson/i) {
		quest::say("Then go. He appears near the gates of Freeport from time to time. He is not powerful, but he has a secret. Nothing save magic can harm him. This was the result of an experimental potion he drank. Slay him and return his locked spellbook to me.");
	}	
}

sub EVENT_ITEM {
	#:: Turn in for 13863 - A Locked Book
	if (plugin::takeItems(13863 => 1 )) {
		quest::say("You have done the world of magic a great justice,$name");
		#:: Ding!
		quest::ding();
		#:: Give a small amount of xp
		quest::exp(500);
		#:: Create a hash for storing cash - 900 to 2000cp
		my %cash = plugin::RandomCash(2000,10000);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set faction
		quest::faction(11,1); 			#:: + Arcane Scientists
		quest::faction(235,-1); 		#:: - Knights of Truth
		quest::faction(105,-1); 		#:: - Freeport Militia
		quest::faction(184,1); 			#:: + Knights of Truth
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}	
