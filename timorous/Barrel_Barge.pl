sub EVENT_SPAWN {
	#:: Create a proximity, 20 units across, 20 units tall, without proximity say
	quest::set_proximity($x - 10, $x + 10, $y - 20, $y + 20, $z - 10, $z + 10, 0);
}

sub EVENT_ENTER {
	#:: Move client to Oasis of Marr (oasis)
	quest::movepc(37, -778.40, 879.15, -0.65, 389.5);
}
