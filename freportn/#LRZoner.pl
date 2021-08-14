sub EVENT_SPAWN {
	#:: Set a proximity 70 by 70 units wide; by 20 units tall, without proximity say
	quest::set_proximity($x - 70, $x + 70, $y - 70, $y + 70, $z - 10, $z + 10, 0);
}

sub EVENT_ENTER {
	#:: Move the player who triggered the event to 9 - freportw at the specified coordinates and heading
	quest::movepc(9, -586.57, 715.13, -19.25, 324.5);
	if($status > 100) {
		$client->Message(15, "DEBUG: You have entered a proximity!");
}
