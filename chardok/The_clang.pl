sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::emote("of picks and shovels can be heard above the constant crack of whips.");
		#:: Depop with spawn timer active
		quest::depop_withtimer();
	}
}