sub EVENT_SPAWN {
	#:: Set a proximity 80 by 80 units wide; by 20 units tall, without proximity say
	quest::set_proximity($x - 70, $x + 70, $y - 70, $y + 70, $z - 10, $z + 10, 0);
}

sub EVENT_ENTER {
	#:: Move the player who triggered the event to 8 - freportn at the specified coordinates
	quest::movepc(9, -586.57, 715.13, -19.25, 324.5);
}
