sub EVENT_SPAWN {
	#:: Create a timer 'despawn' that triggers in 600 seconds (10 min)
  	quest::settimer("despawn",600);
}

sub EVENT_TIMER {
	#:: Stop the timer "despawn"
	quest::stoptimer("despawn");
	#:: Depop without spawn timer
	quest::depop();
}

sub EVENT_COMBAT {
	if ($combat_state == 1) {
		#:: Stop the timer "despawn"
		quest::stoptimer("despawn");
	}
	else {
		#:: Create a timer 'despawn' that triggers in 600 seconds (10 min)
		quest::settimer("despawn", 600);
	}
}

sub EVENT_DEATH_COMPLETE {
	#:: Stop the timer "despawn"
  	quest::stoptimer("despawn");
}