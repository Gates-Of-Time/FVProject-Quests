sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 4
	if ($wp == 4) {
		quest::say("Come along, prisoner.");
		#:: Send a signal "1" to South Qeynos >> #Riley_Shplots (1183) with no delay
		quest::signalwith(1183,1,0);
	}
}
