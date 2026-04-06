sub EVENT_SPAWN {
	quest::shout("For the honor of Rallos Zek! Attack!");
	#:: Spawn a Eastern Wastes >> Ry`Gorr_Basher (116553), without grid or guild war, at the current location.
	quest::spawn2(116553, 0, 0, ($x + 150), ($y + 15), $z, $h);
	quest::spawn2(116553, 0, 0, ($x + 100), ($y + 75), $z, $h);
	quest::spawn2(116553, 0, 0, ($x + 150), ($y - 15), $z, $h);
	quest::spawn2(116553, 0, 0, ($x + 100), ($y - 75), $z, $h);
	quest::spawn2(116553, 0, 0, ($x - 10), $y, $z, $h);
}

sub EVENT_DEATH {
	quest::signal(116119, 0);
}