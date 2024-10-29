#:: 547 - Ro Gate

sub EVENT_SPELL_EFFECT_CLIENT {
	#:: Move player to zone 34 - nro, $x (effect_base_value2), $y (effect_base_value1), $z (effect_base_value3), $heading (effect_base_value4)
	quest::movepc(34, 820, 1374, 10, 40);
}
