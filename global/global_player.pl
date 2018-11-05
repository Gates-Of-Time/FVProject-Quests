sub EVENT_ZONE {
	#:: Figure out if the player has a pet and blow it up when they leave a zone
	if ($client->GetPetID()) {
		$PetID = $entity_list->GetMobByID($client->GetPetID());
		$PetID->Kill();
	}	
}

sub EVENT_ENTERZONE {
	#:: Set common tongue to 1 for any new player that is not human
	if ($race ne "Human") {
		if (!defined $qglobals{"newbiecommon"}) {
			$client->SetLanguageSkill(0, 1);
			quest::setglobal("newbiecommon", 1, 5, "F");
		}
	}
	#:: Figure out if the player has a pet and blow it up when they enter a zone
	if ($client->GetPetID()) {
		$PetID = $entity_list->GetMobByID($client->GetPetID());
		$PetID->Kill();
	}
}

sub EVENT_CAST_BEGIN {
	if ($client->GetGM() == 1) {
		$client->Message(13, "You cast spell id: $spell_id");
		$client->Message(13, "Spell delay is: " . $client->GetSpellStat($spell_id, "cast_time"));
	}
}
