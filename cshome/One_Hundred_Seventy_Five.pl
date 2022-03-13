sub EVENT_SAY {
	quest::say("yep.");
}

sub EVENT_DEATH_COMPLETE {
	foreach $pc ($entity_list->GetClientList()) {
		if ($pc->GetID() == $killer_id) {
			$pc->GrantAlternateAdvancementAbility(90, 1, 0);
			$pc->Message(15, "This is ridic.");
			last;
		}
	}
}
