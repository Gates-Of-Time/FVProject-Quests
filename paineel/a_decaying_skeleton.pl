sub EVENT_SAY { 
	if ($text=~/Ahhh, I feel much better now.../i) {
		quest::say("Arrrreeeee!");
	}
}
