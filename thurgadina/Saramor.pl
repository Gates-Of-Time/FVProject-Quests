sub EVENT_SIGNAL {
	#:: Match signal "1" from Thurgadin >> Horasug (115013)
	if ($signal == 1) {
		quest::say("Blasphemer!");
	}
	#:: Match signal "2" from Thurgadin >> Horasug (115013)
	elsif ($signal == 2) {
		quest::say("Get him boys!");
	}
	#:: Match signal "3" from Thurgadin >> Horasug (115013)
	elsif ($signal == 3) {
		#:: Set running to enabled
		quest::SetRunning(1);
		#:: Start grid 6
		quest::start(6);
	}
	#:: Match signal "4" from Thurgadin >> Rumagur (115011/115187)
	elsif ($signal == 4) {
		quest::say("Well, don't ya just keep us in suspense now. What in the world was it?");
		#:: Send a signal "4" to Thurgadin >> Rumagur (115011) with a 8000 ms (8 second) delay
		quest::signalwith(115011,4,8000);
		#:: Send a signal "4" to Thurgadin >> Rumagur (115187) with a 8000 ms (8 second) delay
		quest::signalwith(115187,4,8000);
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 4
	if ($wp == 4) {
		#:: Set running to disabled
		quest::SetRunning(0);
	}
	#:: Match waypoint 9
	elsif ($wp == 9) {
		#:: Stop current movement
		quest::stop();
		quest::say("So good to see you, Rumagur. I hope you're feelin better today.");
		#:: Send a signal "3" to Thurgadin >> Rumagur (115011) with a 8000 ms (8 second) delay
		quest::signalwith(115011,3,8000);
		#:: Send a signal "3" to Thurgadin >> Rumagur (115187) with a 8000 ms (8 second) delay
		quest::signalwith(115187,3,8000);
	}
}

