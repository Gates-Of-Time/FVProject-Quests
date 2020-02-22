sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("Time to die $name!");
	}
}

sub EVENT_AGGRO {
	#:: Create a scalar variable to store the plural race name
	$raceplural = "${race}s";
	quest::say("$raceplural have no place in our realm!");
}

sub EVENT_DEATH_COMPLETE {
	quest::say("My comrades will avenge my death.");
}
