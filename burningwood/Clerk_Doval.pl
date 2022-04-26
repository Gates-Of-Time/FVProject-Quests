sub EVENT_DEATH_COMPLETE {
  quest::say("All Iksar residents.. shall learn.. of my demise. Ungghh!!");
	#:: Send a signal '1' to the indicated npc_type id without delay
	quest::signalwith(87101, 1, 0);		#:: Atheling_Plague
}

