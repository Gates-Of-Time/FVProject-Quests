sub EVENT_SPAWN {
	#:: Create a proximity, 100 units across, 10 units tall, without proximity say
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 5, $z + 5, 0);
}

sub EVENT_ENTER {
	quest::emote("erupts in a cloud of spores!");
	#:: Spawn a The Liberated Citadel of Runnyeye >> a_sporeling (11188)
	quest::spawn2(11188, 0, 0, $x, $y, $z, $h);
}
