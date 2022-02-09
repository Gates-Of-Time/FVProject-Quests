#:: Shaman epic 1.0

sub EVENT_DEATH_COMPLETE {
	#:: Spawn a The Field of Bone >> a_lesser_spirit (78211) at the current location
	quest::spawn2(78211, 0, 0, $x, $y, $z, $h);
}
