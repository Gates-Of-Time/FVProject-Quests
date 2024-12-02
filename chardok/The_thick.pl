sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::emote("dust is beginning to clog your throat and nostrils.");
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
}