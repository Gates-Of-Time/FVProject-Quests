sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, fellow traveler! I gotta tell ya. I love this town. Especially Crow's. Although the crowd seems a bit shadier than other places of the sort.");
	}
	if ($text=~/testament of vanear/i) {
		quest::say("So you have heard that good old Moodoro has knowledge of the Testament of Vanear. I care little for that book. Of course I have it!! If you want it, I will sell it to you for two gold pieces.");
	}
	if ($text=~/ran/i) {
		quest::say("Ran Flamespinner is a librarian in Highpass Hold.");
	}
	if ($text=~/page 34/i) {
		quest::say("So, you know I have page 34. Pretty smart of me to tear the most important page out before someone else tried, eh? If you really want it, then sit down and deal in. Ante is 4 gold. I will give you one card. If it is a jester, then I will give you the page. Let's do it.");
	}
	if ($text=~/tonic/i) {
		quest::say("I need some of Erud's tonic water. There is a merchant in Erudin who sells it.");
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: When NPC arrives at waypoint 6
	if ($wp == 6){
		quest::say("<urp>.. I don't feel so well.");
		#:: Send a signal to North Qeynos >> Flynn_Merrington (2091)
		quest::signal(2091,1,1);
	}
	#:: When NPC arrives at waypoint 14
	if ($wp == 14) {
		#:: Sit down
		plugin::DoAnim("sit");
	}
}

sub EVENT_SIGNAL {
	if ($wp == 14) {
		quest::say("Ooooh.. Bllaughhh.. Ooh.. I need some tonic.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 13118 -  Erud's Tonic
	if (plugin::check_handin(\%itemcount, 13118 => 1)) {
		quest::say("Oh thank the maker you have returned. Here is a little something in return");
		#:: Give a small amount of xp
		quest::exp(200);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(60,20); 		#:: + Crimson Hands
		quest::faction(145,20); 	#:: + High Council of Erudin
		quest::faction(143,-20); 	#:: - Heretics
		quest::faction(147,20); 	#:: + High Guard of Erudin
		#:: Give a small amount of cash copper - plat
		quest::givecash(5,0,0,0);
	}
	#:: Turn in for 13994 - Jester
	if (plugin::check_handin(\%itemcount, 13994 => 1)) {
		quest::say("Lucky you. We were hoping to really clean you out. Here you go. Take the page. Even together, the book is nothing more than fiction.");
		#:: Ding!
		quest::ding();
		#:: Give item 13836 - Page 34 of a Book
		quest::summonitem(13836);
	}
	#:: Turn in for 4 Gold
	if ($gold == 4) {
		quest::say("Well, what do you have?!!");
		#:: Ding!
		quest::ding();
		#:: Randomly choose a card 13994 - Jester, 13993 - Queen, 13992 - King, 13995 - Knight
		quest::summonitem(quest::ChooseRandom(13994,13993,13992,13995));
	}
	#:: Turn in for 2 Gold
	if ($gold == 2) {
		quest::say("HA!! I hope you enjoy the book. It is missing pages 30 and 34. It is nothing more than garbage without them. A rogue ripped them from their bindings and sold them to [" . quest::saylink("Ran") . "].");
		#:: Ding!
		quest::ding();
		#:: Give item 17918 - Testament of Vanear
		quest::summonitem(17918);
	}
	else {
		quest::givecash($copper, $silver, $gold, $platinum);
	}
	plugin::return_items(\%itemcount);
}

sub EVENT_DEATH_COMPLETE {
	quest::emote("<urp>.. I don't feel so well.");
}
