sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hey, $name. Heh, heh.  Keep up the good work.  Commander Bayle needs all the patrols he can get.  He says the time is near, now that the Shrine of Bertoxxulous in the aqueducts is complete.");
	}
}

sub EVENT_SIGNAL {
	if ($signal == 1) {
		#:: Signal sent from qeynos/Lieutenant_Arathur.pl
		quest::say("Yes, sir!");
	}
	elsif ($signal == 2) {
		#:: Signal sent from qeynos/Guard_Mezzt.pl
		quest::say("Hey! Quit pestering Mezzt! Can't you see he has no tongue. And before you ask, it is none of your business what happened to him. Bug off.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
