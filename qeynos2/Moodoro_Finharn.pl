sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, fellow traveler! I gotta tell ya. I love this town. Especially Crow's. Although the crowd seems a bit shadier than other places of the sort.");
	}
	elsif ($text=~/testament of vanear/i) {
		quest::say("So you have heard that good old Moodoro has knowledge of the Testament of Vanear. I care little for that book. Of course I have it!! If you want it, I will sell it to you for two gold pieces.");
	}
	elsif ($text=~/ran/i) {
		quest::say("Ran Flamespinner is a librarian in Highpass Hold.");
	}
	elsif ($text=~/page 34/i) {
		quest::say("So, you know I have page 34. Pretty smart of me to tear the most important page out before someone else tried, eh? If you really want it, then sit down and deal in. Ante is 4 gold. I will give you one card. If it is a jester, then I will give you the page. Let's do it.");
	}
	elsif ($text=~/tonic/i) {
		quest::say("I need some of Erud's tonic water. There is a merchant in Erudin who sells it.");
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 6
	if ($wp == 6) {
		quest::say("<urp>.. I don't feel so well.");
		#:: Send a signal "1" to North Qeynos >> Flynn_Merrington (2091) with no delay
		quest::signalwith(2091, 1, 0);
	}
	#:: Match waypoint 14
	elsif ($wp == 14) {
		#:: Sit down
		plugin::DoAnim("sit");
	}
}

sub EVENT_SIGNAL {
	#:: Match signal "1" from qeynos2/Flynn_Merrington.pl
	if ($signal == 1) {
		quest::say("Ooooh.. Bllaughhh.. Ooh.. I need some tonic.");
	}
}

sub EVENT_ITEM {
	#:: Match a 13118 -  Erud's Tonic
	if (plugin::takeItems(13118 => 1)) {
		quest::say("Oh thank the maker you have returned. Here is a little something in return");
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(233, 20); 	#:: + Crimson Hands
		quest::faction(266, 2); 	#:: + High Council of Erudin
		quest::faction(265, -3); 	#:: - Heretics
		quest::faction(267, 3); 	#:: + High Guard of Erudin
		#:: Give a small amount of experience
		quest::exp(200);
		#:: Create a hash for storing cash - 1 to 10cp
		my %cash = plugin::RandomCash(1,10);
		#:: Grant a random cash reward
		quest::givecash($cash{copper},$cash{silver},$cash{gold},$cash{platinum});
	}
	#:: Match a 13994 - Jester
	elsif (plugin::takeItems(13994 => 1)) {
		quest::say("Lucky you. We were hoping to really clean you out. Here you go. Take the page. Even together, the book is nothing more than fiction.");
		#:: Ding!
		quest::ding();
		#:: Give item 13836 - Page 34 of a Book
		quest::summonitem(13836);
	}
	#:: Match 4 Gold
	elsif (plugin::takeCoin(0, 0, 4, 0)) {
		quest::say("Well, what do you have?!!");
		#:: Ding!
		quest::ding();
		#:: Give a random reward: 13994 - Jester, 13993 - Queen, 13992 - King, 13995 - Knight
		quest::summonitem(quest::ChooseRandom(13994,13993,13992,13995));
	}
	#:: Match 2 Gold
	elsif (plugin::takeCoin(0, 0, 2, 0)) {
		quest::say("HA!! I hope you enjoy the book. It is missing pages 30 and 34. It is nothing more than garbage without them. A rogue ripped them from their bindings and sold them to [Ran].");
		#:: Ding!
		quest::ding();
		#:: Give item 17918 - Testament of Vanear
		quest::summonitem(17918);
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_DEATH_COMPLETE {
	quest::emote("<urp>.. I don't feel so well.");
}
