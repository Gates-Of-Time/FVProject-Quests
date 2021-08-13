sub EVENT_SPAWN {
	#:: Set a proximity 80 units wide by 120 units tall, without proximity say
	quest::set_proximity($x - 40, $x + 40, $y - 40, $y + 40, $z - 60, $z + 60, 0);
}

sub EVENT_ENTER {
	#:: Move the player who triggerd the event to 51 - lakerathe at the specified coordinates
	quest::movepc(51, 2643, 2419, 97);
}
