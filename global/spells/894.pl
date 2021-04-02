#:: 894 - Invisibility Versus Animal

sub EVENT_SPELL_EFFECT_CLIENT {
	if ($client->GetPetID()) {
		$PetID = $entity_list->GetMobByID($client->GetPetID());
		if ($PetID->Charmed()) {
			$PetID->WipeHateList();
			$PetID->SetSpecialAbility(28, 1);
			$PetID->AddToHateList($client, 10000);
		}
		else {
			$PetID->Kill();
		}
	}
}
