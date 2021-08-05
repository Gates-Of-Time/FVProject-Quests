sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::say("Hello. $name.  I have some of the finest baked goods in Paineel.  It's the best home cooking you have had, ever.  That be my word.");
	}
	elsif ($text=~/tunare/i) {
		quest::say("Hush! You must not invoke Her name here. All of the citizens of Paineel are devout followers of Cazic Thule or they should be! Speak no more of any other god here, unless you have a wish to die.");
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
