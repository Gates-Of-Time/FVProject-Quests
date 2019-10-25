sub EVENT_SPAWN {
	#:: Set hitpoints to half of 96
	$npc->SetHP(48);
	#:: Set next HP event at 51 percent
	quest::setnexthpevent(51);
}

sub EVENT_HP {
	quest::say("Event HP triggered.");
	#:: Set hitpoints to half of 96
	$npc->SetHP(48);
	quest::say("Set hitpoints to 48.");
	#:: Set next HP event at 51 percent
	quest::setnexthpevent(51);
	quest::say("set next hp event for 51 percent.");
}
