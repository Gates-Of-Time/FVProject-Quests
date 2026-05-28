sub EVENT_SAY { 
	if($text=~/Hail/i){
		quest::say("I am here to make sure no one flees the arena as a coward."); 
	}
}

