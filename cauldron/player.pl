#:: Chalice of Conquest quest
sub EVENT_PLAYER_PICKUP {
	#:: Match 12274 - Chalice of Conquest, ground spawn created by #Captain_Klunga.pl
	if ($picked_up_id == 12274) {
		my $klunga = entity_list->GetMobByNpcTypeID(70072);
		$klunga->AddToHateList($client, 1);
	}
}
