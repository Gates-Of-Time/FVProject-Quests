sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Ahoy there, Sailor!");
	}
	elsif ($text=~/not a sailor/i) {
		quest::say("What do you mean?! After all that time you spent sailing to Erudin you have to be a sailor by now.");
		#:: Do animation "laugh"
		quest::doanim(63);
	}
}

sub EVENT_SIGNAL {
	#:: Match signal "1" from /erudnext/Helia_Bluehawk.pl
	if ($signal == 1) {
		quest::say("Ha! The closest you will get to tonic is in the library. That's assuming you know how to spell tonic. Bwaha ha! When you see the bookworm give her a KISS for me! HAHA!!");
		#:: Send a signal "1" to 24067 - Helia_BlueHawk with no delay
		quest::signalwith(24067, 1, 0);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
