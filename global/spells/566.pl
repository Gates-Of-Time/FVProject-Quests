#:: 566 - Common Portal

sub EVENT_SPELL_EFFECT_CLIENT {
	#:: Move player to zone 21 - commons, $x (effect_base_value2), $y (effect_base_value1), $z (effect_base_value3), $heading (effect_base_value4)
	quest::movepc(21, 1840, 2, -14, 0);
}
