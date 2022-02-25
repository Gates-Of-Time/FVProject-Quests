sub EVENT_SPAWN{
	quest::settimer("undead_marine", 640);
}

sub EVENT_TIMER {
	if ($timer eq "undead_marine") {
		quest::depop();
	}
}
