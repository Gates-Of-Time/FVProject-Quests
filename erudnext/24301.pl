sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 100 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 0);
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 1
	if ($wp == 1) {
		#:: Create a proximity, 100 units across, 100 units tall, without proximity say
		quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 0);
	}
	#:: Match waypoint 2
	elsif ($wp == 2) {
		quest::clear_proximity();
	}
}

sub EVENT_ENTER {
	#:: Move client to South Qeynos (qeynos)
	quest::movepc(1, 209, 17, 3.75, 125);
}
