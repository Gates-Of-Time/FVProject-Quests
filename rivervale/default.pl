sub EVENT_SPAWN {
	quest::settimer("die", 5);
}

sub EVENT_TIMER {
	if ($timer eq "die") {
		quest::setanim($npc->GetNPCTypeID(), 3);
		quest::sethp(1);
		quest::stoptimer("die");
	}
}
