sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::emote("covers a pouch as to keep something from jumping out. 'You not get lizard! You be squashed!'");
	}
}
