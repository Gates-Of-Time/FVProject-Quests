sub EVENT_SAY {   
	if ($text=~/hail/i) {
		quest::say("Hello, $name.  I make the finest statuettes in all the land.  Each one depicts a power on Norrath.  I have some of the most realistic and lifelike statues.  I only take [special orders] as they are rather time-consuming to make.");
	}
	elsif ($text=~/special orders/i) {
		quest::say("Well, if you must know. many priests and devout worshipers of Cazic-Thule purchase my statues and pray over them.  I have made many other statuettes of the gods just to practice, on the off chance that a worshiper of another faith might care to order one from me.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
