sub EVENT_DEATH {
	#:: Spawn a Sleeper's Tomb >> Wyvern Fanatic (128100), without grid or guild war, at the current location
	quest::spawn2(128100, 0, 0, $x, $y, $z, $h);
}
