sub EVENT_SAY {
	if ($text=~/hail/i) {
	    quest::say("Hello. $name.  I have some of the finest baked goods in Paineel.  It's the best home cooking you have had. ever.  That be my word.");
    }
}