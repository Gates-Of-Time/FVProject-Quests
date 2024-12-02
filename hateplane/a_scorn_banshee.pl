sub EVENT_COMBAT {
	#:: Match combat state 1 - entered combat
	if ($combat_state == 1) {
		quest::say("You are almost beneath notice, but our master commands your death.");
	}
}

sub EVENT_SLAY {
	quest::emote("snorts in contempt, not at all surprised at the ease of her victory.");
}

sub EVENT_DEATH_COMPLETE {
	quest::emote("blinks in confusion, obviously surprised that she has met her end at the hands of mere mortals.");
	if (quest::is_content_flag_enabled("Kunark_EpicsEra")) {
		# 5% chance to spawn thought_destroyer on scorn banshee death
		my $random = int(rand(100));
		if ($random <= 5) {
			#:: Spawn a The Plane of Hate >> thought_destroyer (76003), without grid or guild war, at the current location
			quest::spawn2(76003, 0, 0, $x, $y, $z, $h);
		}
	}
}
