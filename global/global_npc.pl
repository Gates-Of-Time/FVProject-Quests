sub EVENT_AGGRO {
	if (plugin::IsRaidMob($npc->GetNPCTypeID())) {
		quest::worldwidemessage(15, "" . $client->GetCleanName() . " has engaged " . $npc->GetCleanName() . " in $zonesn!", 0, 255);
	}
}

sub EVENT_DEATH_COMPLETE {
	if (plugin::IsRaidMob($npc->GetNPCTypeID())) {
		quest::worldwidemessage(15, "" . $client->GetCleanName() . " has killed " . $npc->GetCleanName() . " in $zonesn.", 0, 255);
	}
}
