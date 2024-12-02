sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::emote("of decaying flesh and freshly turned soil overpowers your other senses.");
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
}