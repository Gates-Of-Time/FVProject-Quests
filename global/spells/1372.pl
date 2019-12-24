#:: Translocate: Common

sub EVENT_SPELL_EFFECT_TRANSLOCATE_COMPLETE {
	#:: Create a scalar variable to store the target's client ID
	my $TargetClient = $entity_list->GetClientByID($targetid);
	#:: Move the target to commons at the given coordinates
	$TargetClient->MovePC(21, 1839, 2, -15, 60);
}
