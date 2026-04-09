sub EVENT_AGGRO {
	#:: Spawn a Dragon Necropolis >> a_swarming_beetle (123132), without grid or guild war, at the given location
	quest::spawn2(123132, 0, 0, $x, $y, $z, $h);
	quest::spawn2(123132, 0, 0, $x - 2, $y, $z, $h);
	quest::spawn2(123132, 0, 0, $x + 2, $y, $z, $h);
	quest::spawn2(123132, 0, 0, $x, $y - 2, $z, $h);
	quest::spawn2(123132, 0, 0, $x, $y + 2, $z, $h);
	quest::spawn2(123132, 0, 0, $x + 1, $y + 1, $z, $h);
	#:: Depop with spawn timer active
	quest::depop_withtimer();
}
