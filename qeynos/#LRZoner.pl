sub EVENT_SPAWN {
	#:: Set a proximity 70 by 70 units wide; by 20 units tall, without proximity say
	quest::set_proximity($x - 70, $x + 70, $y - 70, $y + 70, $z - 10, $z + 10, 0);
}

sub EVENT_ENTER {
	#:: Move the player who triggered the event to 45 - qcat at the specified coordinates and heading
	quest::movepc(45, 147, -175, -77, 382.8);
}
