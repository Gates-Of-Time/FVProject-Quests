#:: Butcherblock Mountains >> SirensBane (68228)

sub EVENT_SPAWN {
	#:: Create a proximity, 80 units across, 200 units tall, without proximity say
	quest::set_proximity($x - 40, $x + 40, $y - 40, $y + 40, $z - 100, $z + 100, 0);
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 1
	if ($wp == 1) {
		#:: Create a proximity, 80 units across, 100 units tall, without proximity say
		quest::set_proximity($x - 40, $x + 40, $y - 40, $y + 40, $z - 100, $z + 100, 0);
	}
	#:: Match waypoint 2
	elsif ($wp == 2) {
		quest::clear_proximity();
	}
}

sub EVENT_ENTER {
	#:: Move client to Ocean of Tears (oot)
	quest::movepc(69, 7582, -2090, 4, 384);
}
