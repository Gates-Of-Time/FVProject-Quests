sub EVENT_AGGRO {
	quest::say("Time to die, $name!");
}


sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hail. $name!  Good to see ya!  Welcome to Qeynos!  My name is Gehnus Torris.  If you are looking to do some trading, I would steer clear of that Tubal fellow.  He is from Highpass Hold and they are well known for taking advantage of travelers.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
