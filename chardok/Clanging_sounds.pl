sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::emote("of metal striking stone echo through the tunnel.");
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
}