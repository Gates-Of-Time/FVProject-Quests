sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Greetings, friend! Welcome to the Hog Caller's Inn! Don't let the name fool you.  We are the finest establishment in Freeport. Please feel free to relax in our lounge. There is usually music to soothe your blues away.");
	}
	elsif ($text=~/mail for room two/i) {
		quest::say("Hmmph !! If you're here to get the mail for room two you first need to show me the room key.");
	}
}

sub EVENT_ITEM {
	#:: Turn in for 12147 - Hog Key #2
	if (plugin::takeItems(12147 => 1 )) {
		quest::say("Here you go then.");
		#:: Ding!
		quest::ding();
		#:: Give A Sealed Letter
		quest::summonitem(13520); 
		#:: Give a small amount of xp
		quest::exp(100);
		#:: Set faction
		quest::faction(229,1);	 	#:: + Coalition of Tradefolk
		quest::faction(281,1); 		#:: + Knights of Truth
		quest::faction(291,1); 		#:: + Merchants of Qeynos
		quest::faction(5015,1); 	#:: + Coalition of Tradefolk III
	}
	#:: Return unused items
	plugin::returnUnusedItems();
}

sub EVENT_SIGNAL { 
	#:: Receive Signal 1 from Shintl Lowbrew of Freportw
	if ($signal == 1) {
		quest::say("Hmmph !! If you're here to get the mail for room two, you'll need to show me the room key.");
	}
}
