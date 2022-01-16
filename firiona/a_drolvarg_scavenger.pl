sub EVENT_SPAWN {
	#:: SetEntityVariable variable_name, variable_value
	plugin::SEV($npc, "hasmap", 0);
	#:: Set local loot chance for 18076 - Bloodsoaked Note at 2%
	$roll = plugin::RandomRange(1, 500);
	if ($roll <= 10) {
		#:: Add to loot 18076 - Bloodsoaked Note
		quest::addloot(18076, 1, 0);
		#:: Update Entity Variable
		plugin::SEV($npc, "hasnote", 1);
	}
}

sub EVENT_DEATH_COMPLETE {
	#:: ReadEntityVariable entity, variable_name
	$hasnote = plugin::REV($npc, "hasnote");
	#:: Match if $hasnote
	if ($hasnote) {
		quest::emote ("yips and falls to the ground. A tattered note appears to be tucked into his armor. ");
	}
}
