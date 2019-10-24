sub EVENT_SPAWN {
	#:: Create a timer "injured" that loops every 5 seconds
	quest::settimer("injured", 5);
}

sub EVENT_TIMER {
	#:: Match timer "injured"
	if ($timer eq "injured") {
		#:: Set health to 50 percent
		quest::sethp(50);
	}
}

sub EVENT_COMBAT {
	#:: Match if Combat State = 1 (True - Fighting)
	if ($combat_state == 1) {
		#:: Stop the timer "injured"
		quest::stoptimer("injured");
	}
	#:: Match if Combat State = 0 (False - Not fighting)
	elsif ($combat_state == 0) {
		#:: Create a timer "injured" that loops every 5 seconds
		quest::settimer("injured", 5);
	}
}
