sub EVENT_SAY {
	if ($text=~/nice hat/i) {
		quest::say("Thank you, It is worn with pride and is the symbol of the Rivervale Militia.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13959 - Carrot Stew
	if (plugin::takeItems(13959 => 1)) {
		quest::say("Oh good!  Hey.  You are not Jillin..  Helping out Blinza huh?  She is quite a woman..  Yes indeed.  Quite a woman..  ah..  Oh sorry.  Here you go.  Thanks again.  Mayor Gubbin will be pleased.");
		#:: Ding!
		quest::ding();
		#:: Grant a moderate amount of experience
		quest::exp(1000);
		#:: Create a hash for storing cash - 1 to 300cp
		my %cash = plugin::RandomCash(1,300);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(133, 4);		#:: + Guardians of the Vale
		quest::faction(208, 4);		#:: + Mayor Gubbin
		quest::faction(316, 4);		#:: + Storm Reapers
		quest::faction(218, 4);		#:: + Merchants of Rivervale
		quest::faction(88, -8);		#:: + Dreadguard Outer
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
