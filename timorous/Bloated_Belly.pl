sub EVENT_SPAWN {
	#:: Create a proximity, 20 units across, 20 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 30, $y + 30, $z - 10, $z + 10, 0);
}

sub EVENT_ENTER {
	#:: Move client to The Overthere (overthere)
	quest::movepc(93, 2734.55, 3449.22, -159, 257.5);
}
