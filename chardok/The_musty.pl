sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::emote("scent of sweat and labor wafts up from the tunnels below.");
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
}