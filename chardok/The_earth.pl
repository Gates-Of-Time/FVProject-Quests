sub EVENT_SPAWN {
	#:: Create a proximity, 60 units across
	quest::set_proximity($x - 30, $x + 30, $y - 30, $y + 30);
}

sub EVENT_ENTER {
	quest::emote("at your feet erupts.");
	#:: Spawn a Chardok >> a_Reanimated_Berserker (103093), without grid or guild war, at the current location
	quest::spawn2(103093, 0, 0, $x, $y, $z, $h);
	#:: Depop with spawn timer active
	quest::depop_withtimer();
}
