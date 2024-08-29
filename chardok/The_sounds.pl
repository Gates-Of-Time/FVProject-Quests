sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::emote("of hard labor ring from below as chains rattle above your head.");
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
}