#:: 674 - Alter Plane: Sky

sub EVENT_SPELL_EFFECT_CLIENT {
	if ($status < 80) {
		if ($zoneid != 71) {
	 		$client->BuffFadeAll();
		}
	}
}
