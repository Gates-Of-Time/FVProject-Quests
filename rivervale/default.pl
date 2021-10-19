sub EVENT_SPAWN {
	quest::settimer("die", 5);
}

sub EVENT_TIMER {
	if ($timer eq "die") {
		quest::setanim($mob->GetNPCTypeID(), 3);
		quest::sethp(1);
	}
}
