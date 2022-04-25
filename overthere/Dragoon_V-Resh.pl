sub EVENT_SPAWN {
	#:: Create a timer 'ZoneTime' that triggers every 60 seconds
	quest::settimer("ZoneTime", 60);
}

sub EVENT_TIMER {
	#:: Match timer 'ZoneTime'
	if ($timer eq "ZoneTime") {
		if ($zonehour == 21) {
			quest::moveto(2734, 2464, -49, 390, 1);
		}
		elsif ($zonehour == 7) {
			quest::depop_withtimer();
		}
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal '1' from /overthere/General_V-Deers.pl
	if ($signal == 1) {
		#:: Set running to true (Run)
		quest::SetRunning(1);
		#:: Start path grid 281
		quest::start(281);
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 28
	if ($wp == 28) {
		#:: Set running to false (Walk)
		quest::SetRunning(0);
	}
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
