#:: 666 - Alter Plane: Hate

sub EVENT_SPELL_EFFECT_CLIENT {
	#:: Move player to zone 76 - hateplane, $x (effect_base_value2), $y (effect_base_value1), $z (effect_base_value3), $heading (effect_base_value4)
	quest::movepc(76, -353, -375, 3.75, 256);
}
