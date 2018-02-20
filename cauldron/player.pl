#:: Chalice of Conquest quest
sub EVENT_PLAYER_PICKUP {
	#:: Match 12274 - Chalice of Conquest, ground spawn created by #Captain_Klunga.pl
	if ($picked_up_id == 12274) {
		quest::ze(1,"You have picked up the Chalice of Conquest");
		my $klunga = entity_list->GetMobByNpcTypeID(70072);
		if ($klunga) {
			quest::ze(1, "I am Klunga and I have been identified");
			$klunga->AddToHateList($client, 1);
		}
	}
}
