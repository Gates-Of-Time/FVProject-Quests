#:: 855 - Trakanon's Touch

sub EVENT_SPELL_EFFECT_CLIENT {
	$instanceId = $client->GetInstanceID();
	if ($instanceId > 0) {
		#:: Move player to zone 89 - sebilis, $instance_id, $x (effect_base_value2), $y (effect_base_value1), $z (effect_base_value3), $heading (effect_base_value4)
		quest::MovePCInstance(89, $instanceid, -117, -1283, -175, 46);
	}
	else {
		#:: Move player to zone 89 - sebilis, $x (effect_base_value2), $y (effect_base_value1), $z (effect_base_value3), $heading (effect_base_value4)
		quest::movepc(89, -117, -1283, -175, 46);
	}

	return -1;
}
