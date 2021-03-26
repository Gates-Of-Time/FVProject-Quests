#:: 5243 - Fading Memories

sub EVENT_SPELL_EFFECT_CLIENT {
	if ($client->GetPetID()) {
		$PetID = $entity_list->GetMobByID($client->GetPetID());
		$PetID->Kill();
	}
}
