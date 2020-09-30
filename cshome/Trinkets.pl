sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 100 units tall, and enable proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 1);
	#:: Also enable proximity say
	quest::enable_proximity_say();
}

sub EVENT_ENTER {
	quest::popup('Manastone', 'Do you want a manastone?', 42, 1, 0);
}
