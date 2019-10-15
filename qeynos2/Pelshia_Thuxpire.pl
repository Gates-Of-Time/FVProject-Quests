sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Heya.. If you see anything you like, I'm sure we can make a deal.");
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal "1" from /qeynos2/Knargon_Lanenda.pl
	if ($signal == 1) {
		quest::say("Um, just fine, Knargon. What do you want now, huh?");
		#:: Send a signal "1" to North Qeynos >> Knargon_Lanenda (2072) with no delay
		quest::signalwith(2072, 1, 0);
	}
	#:: Match a signal "2" from /qeynos2/Knargon_Lanenda.pl
	elsif ($signal == 2) {
		quest::say("How about you go, and I'll catch up with you... never?");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
