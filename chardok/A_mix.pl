sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::emote("of sulfur and dust hangs heavily in the air.");
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
}