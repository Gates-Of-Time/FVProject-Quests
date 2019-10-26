sub EVENT_SAY { 
	if ($text=~/Hail/i) {
		quest::say("Hail. $name - Are you [interested] in helping the League of Antonican Bards by delivering some [mail]?");
	}
	if ($text=~/interested/i) {
		quest::say("I have messages that need to go to - well. right now I have one that needs to go to Freeport.  Will you deliver mail to [Freeport] for me?");
	}
	if ($text=~/mail/i) {
		quest::say("The League of Antonican Bards has a courier system made up of travelers, adventurers, and [agents].  We pay good gold to anyone who will take messages from bards such as myself to one of our more distant offices.  Are you [interested]?");
	}
	if ($text=~/agents/i) {
		quest::say("Lyra Lyrestringer, Tacar Tissleplay, Kilam Oresinger and Siltria Marwind all report to Jakum Webdancer.");
	}
	if ($text=~/freeport/i) {
		quest::say("Take this letter to Felisity Starbright. You can find her at the bard guild hall. I'm sure she will compensate you for your trouble");
		#:: Give a 18166 - Pouch of Mail (Freeport)
		quest::summonitem("18166");
	}
}

sub EVENT_ITEM { 
	#:: Match 18167 - Pouch of Mail (Kelethin)
	if (plugin::takeItems(18167 => 1)) {
		quest::say("More mail - you have done us a noteworthy service!  Please take this gold for your troubles.  If you are interested in more work, just ask me.");
		#:: Ding!
		quest::ding();
		#:: Grant a small amount of experience
		quest::exp(10);
		#:: Create a hash for storing cash - 800 to 1200cp
		my %cash = plugin::RandomCash(800,1200);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
		#:: Set factions
		quest::faction(284,10); 	#:: + League of Antonican Bards
		quest::faction(281,10); 	#:: + Knights of Truth
		quest::faction(262,10); 	#:: + Guards of Qeynos
		quest::faction(304,-30); 	#:: - Ring of Scale
		quest::faction(285,-30); 	#:: - Mayong Mistmoore
	}
	plugin::return_items(\%itemcount);
}
