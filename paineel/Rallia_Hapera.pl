sub EVENT_SAY {
	if ($text=~/hail/i) {
	    quest::say("Hello. $name.  Thankyou for coming in and looking at our wares.  We should have just about everything you need if you wish to take a trip.");
    }
}