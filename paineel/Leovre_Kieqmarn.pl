sub EVENT_SAY {
	if ($text=~/hail/i) {
	    quest::say("Good day. $name.  Feel free to look through my inventory of spells. but if you touch anything without first buying it I. will have your skin pulled from your flesh. Slowly.");
    }
}