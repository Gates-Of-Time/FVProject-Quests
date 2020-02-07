sub EVENT_SPAWN {
	#:: Create a proximity, 80 units across, 80 units tall, without proximity say
	quest::set_proximity($x - 40, $x + 40, $y - 40, $y + 40, $z - 100, $z + 100, 0);
}

sub EVENT_WAYPOINT_ARRIVE {
	#:: Match waypoint 1
	if ($wp == 1) {
		#:: Create a proximity, 80 units across, 80 units tall, without proximity say
		quest::set_proximity($x - 40, $x + 40, $y - 40, $y + 40, $z - 100, $z + 100, 0);
	}
	#:: Match waypoint 2
	elsif ($wp == 2) {
		quest::clear_proximity();
	}
}

sub EVENT_ENTER {
	if ($x > 0) {
		quest::emote("'s spirit moves you to another land ...");
		#:: Move the client to Freeport
		quest::movepc(10, -975, -15, -52 , 384);
	}
	else {
		quest::emote("'s spirit moves you to another land ...");
		#:: Move the client to Butcher
		quest::movepc(68,4591,2090,-15,0);
	}
}
