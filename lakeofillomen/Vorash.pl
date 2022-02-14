#:: Monk Epic 1.0

sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::emote("ignores you.");
	}
}

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
	quest::say("Foolish mortal! you think you have defeated me? Now, witness the true power of Rallos Zek!");
	#:: Spawn one and only one Lake of Ill Omen >> Xenevorash (85208) at the specified coordinates
	quest::unique_spawn(85208, 0, 0, -542, -807, 79.12, 0);
}

sub EVENT_ITEM {
	#:: Return unused items
	plugin::returnUnusedItems();
}
