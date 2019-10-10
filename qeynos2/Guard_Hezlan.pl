sub EVENT_AGGRO {
	quest::say("Time to die, $name!");
}

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello. $name.  My name is Hezlan Nur and I am a member of the Qeynos Guard, serving the will of Antonius Bayle.  Anything or anyone trying to get into Qeynos has to go through me, first.  Heh!  I sure love it when those dirty Sabertooths try, though!  Nothing is as gratifying as the death wail of a gnoll.");
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal "1" from qeynos2/Guard_Aerryn.pl or qeynos2/Guard_Ginton.pl
	if ($signal == 1) {
		quest::say("It isn't safe to be asking that kind of question. I just mind my business and do my job. You would, too, if you knew what was good for you.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
