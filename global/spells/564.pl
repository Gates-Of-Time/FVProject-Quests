#:: 561 - Nek Portal

sub EVENT_SPELL_EFFECT_CLIENT {
	#:: Move player to zone 25 - netktulos, $x (effect_base_value2), $y (effect_base_value1), $z (effect_base_value3), $heading (effect_base_value4)
	quest::movepc(25, -772, 432, 35);
}
