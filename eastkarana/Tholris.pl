sub EVENT_SAY {
	if ($text=~/hail/i) {
		quest::Emote("stares in contemplation at the landscape.");
	}
}

sub EVENT_SIGNAL {
	#:: Match a signal "99" from /eastkarana/Althele.pl
	if ($signal == 99) {
		quest::emote("breathes quickly and sweats as he channels his spirit into the sky.");
		#:: Cast spell 791 - Call of the Earth
		$npc->CastSpell(791, $owner);
	}
}