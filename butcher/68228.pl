sub EVENT_SPAWN {
	$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 40, $x + 40, $y - 40, $y + 40);
}

sub EVENT_ENTER {
	quest::movepc(69,-9193.3,386.7,5.2);
}
