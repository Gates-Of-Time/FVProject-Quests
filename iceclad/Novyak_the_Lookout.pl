sub EVENT_SPAWN {
	#:: Create a timer '1' that triggers every 2400 seconds (40 min)
	quest::settimer(1,2400);
}

sub EVENT_TIMER {
	#:: Match the timer '1'
	if ($timer == 1){
		quest::say("Guys, can I get down now please?"); 
	}
}