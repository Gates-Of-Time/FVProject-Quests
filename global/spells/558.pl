#:: Circle of Misty

sub EVENT_SPELL_EFFECT_CLIENT {
	#:: Zone 33 - misty, $x (effect_base_value2), $y (effect_base_value1), $z (effect_base_value3), $heading (effect_base_value4)
	quest::movepc(33, -1818, -508, 126, 384);
}
-- Circle of Misty
function event_spell_effect(e)
  local mob = e.target;
  if ( mob:IsClient() ) then 
    local client = e.target:CastToClient();
	client:MovePC(33, -1818, -508.5, 124.3, 5);
  end
return 1;
end
