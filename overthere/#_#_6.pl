sub EVENT_SPAWN {
	quest::set_proximity($x - 75, $x + 75, $y - 75, $y + 75);
}

sub EVENT_ENTER {
	quest::movepc(96, 3506.0, 5702.5, 4.6);
}