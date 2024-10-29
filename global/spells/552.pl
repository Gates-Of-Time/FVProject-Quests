#:: 552 - Circle of Toxxulia

sub EVENT_SPELL_EFFECT_CLIENT {
	#:: Move player to zone 38 - tox, $x (effect_base_value2), $y (effect_base_value1), $z (effect_base_value3), $heading (effect_base_value4)
	quest::movepc(38, -453, 1059, -58, 37);
}
