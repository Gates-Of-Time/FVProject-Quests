sub EVENT_SAY {
	if ($text=~/hail/i) {
	    quest::say("Hail and well met, $name.  I am Keeshla Levlora, a resident necromancer of this beautiful city.  If you are a practitioner of the dark arts under our lord Cazic-Thule, know that you are welcome here.");
    }
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
