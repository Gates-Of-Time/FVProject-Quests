#:: Monk Epic 1.0

sub EVENT_SPAWN {
	quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50, $z - 50, $z + 50, 0);
}

sub EVENT_ENTER {
	if ($ulevel > 45) {
		if ($class eq "Monk") {
			quest::attack($name);
		}
	}
}

sub EVENT_DEATH_COMPLETE {
	quest::shout("Grraaaagghhhh!! Not..Possible!");
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
