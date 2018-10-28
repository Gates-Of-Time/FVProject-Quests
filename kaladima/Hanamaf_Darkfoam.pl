sub EVENT_SAY { 
	if ($text=~/Hail/i) {
		quest::say("Welcome!! Welcome!! Have a seat at the bar and try some of my rich, dwarven ale!!"); 
	}
}
