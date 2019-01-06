sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Enough talk there. chatterbox.  You buy lots of herbs.  I gotta make a living. not more friends.");
	}
	if ($text=~/temple of life/i) {
		quest::say("Oh, yes.. They always come for Kizzie's [" . quest::saylink("honey jum") . "]. They should have sent you next week. There is a problem");
	}	
	if ($text=~/problem/i) {
		quest::say("You see.. Joogl Honeybugger is hurt. He usually collects the [" . quest::saylink("Honeycombs") . "]. Only he knows where to get them. I need the Honeycombs to make the Honey Jum. Go and speak with Joogl. He is at his burrow outside of Rivervale. He says he cannot work. Tell him you need the Honeycombs.");
	}	
	if ($text=~/Honeycombs/i) {
		quest::say("If Kizzie knew that, then she would not hire Joogl Honeybugger!  Go talk to him in the Misty Thicket.");
	}		
	if ($text=~/make/i) {
		quest::say("No, no, no!!  You will not get honey jum until you give Kizzie three honeycombs and thirty gold coins.  Honey jum is valuable.  Kizzie raised the fee!!  That is how it works.");
	}	
	if ($text=~/honey jum/i) {
		quest::say("It's a secret!!  I get the honeycombs and combine them with the secret sauce and..presto.. honey jum!!  It is used by only the wisest as a component.  And you can only get it from Kizzie.  It is also good on batwing crunchies.  If you like.. Kizzie can [" . quest::saylink("make") . "] honey jum for you?");
	}		
} 

sub EVENT_ITEM {
	#:: Turn in for 13953 - Honeycomb x3, 30 Gold 
	if (plugin::takeItemsCoin(0,0,30,0, 13953 => 3)) {
		quest::say("You are one lucky bixie buster. I just made a batch of honey jum. Here. No waiting for you.  One jar for your good work. Bye, now!");
		#:: Give item 13952 - Honey Jum
		quest::summonitem(13952);
		#:: Give a small amount of xp
		quest::exp(500);
		#:: Ding!
		quest::ding();
		#:: Set faction
		quest::faction(77, 5);		#:: + Deeppockets
		quest::faction(208, 5);		#:: + Mayor Gubbin
		quest::faction(218, 5);		#:: + Merchants of Rivervale
		quest::faction(133, 5);		#:: + Guardians of the Vale
		quest::faction(48, -5);		#:: - Coalition of Tradefolk Underground
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}
