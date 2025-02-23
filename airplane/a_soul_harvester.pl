sub EVENT_SPAWN {
	#:: Create a timer 'depop' that triggers in 4800 seconds (80 min)
	quest::settimer("depop", 4800);
}

sub EVENT_TIMER {
	#:: Match if timer named "depop"
	if ($timer eq "depop") {
		#:: Stop the timer "depop"
		quest::stoptimer("depop");
		#:: Depop without spawn timer active
		quest::depop();
	}
}

sub EVENT_DEATH_COMPLETE {
	#:: Spawn a The Plane of Sky >> a_soul_tamer (71100), with no grid or guildwar, at the current location
	quest::spawn2(71100, 0, 0, $x, $y, $z, $h);
}
