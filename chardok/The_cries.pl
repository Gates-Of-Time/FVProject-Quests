sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::emote("of slaves echo through the dusty halls.");
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
}