#:: 674 - Alter Plane: Sky

sub EVENT_SPELL_EFFECT_CLIENT {
	if ($status < 80) {
 		$client->BuffFadeAll();
	}
}
