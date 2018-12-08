sub EVENT_SAY { 
	if ($text=~/Hail/i) {
		quest::say("Hullo. Buy sum of my stuff."); }
}
