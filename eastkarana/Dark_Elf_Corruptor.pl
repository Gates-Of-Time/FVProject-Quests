sub EVENT_SPAWN {
	#:: Create a timer 'despawn' that triggers in 300 seconds (5 min)
  	quest::settimer("despawn", 300);
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
		#:: Create a timer 'despawn' that triggers in 300 seconds (5 min)
		quest::settimer("despawn", 300);
	}
}

sub EVENT_DEATH_COMPLETE {
	#:: Stop the timer "despawn"
  	quest::stoptimer("despawn");
}