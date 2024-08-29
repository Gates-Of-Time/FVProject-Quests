sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::emote("through shallow puddles as you walk along.");
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
}	