sub EVENT_SPAWN {
	quest::say("I have spawned");
	#:: Set hitpoints to half of 96
	$npc->SetHP(48);
	quest::say("I am at half health");
	#:: Set next HP event at 51 percent
	quest::setnexthpevent(51);
	quest::say("I have set my next hp event");
}

sub EVENT_HP {
	#:: Match if HP is 51 percent
	if ($hpevent == 51) {
		#:: Set hitpoints to half of 96
		$npc->SetHP(48);
		#:: Set next HP event at 51 percent
		quest::setnexthpevent(51);
	}
}
