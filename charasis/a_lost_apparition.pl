sub EVENT_SPAWN {
	if ($npc->GetLevel() > 50) {
		$npc->SetSpecialAbility(1, 1);
	}
}
