sub EVENT_SIGNAL {
	#:: Match if signal from thurgadina/Horasug.pl is "1"
	if ($signal == 1) {
		quest::say("Over my dead body!");
	}
	#:: Match if signal from thurgadina/Horasug.pl is "2"
	elsif ($signal == 2) {
		quest::SetRunning(1);
		#:: Start path grid 8
		quest::start(8);
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	if ($wp == 4) {
		quest::SetRunning(0);
	}
	elsif ($wp == 9) {
		quest::stop();
	}
}


