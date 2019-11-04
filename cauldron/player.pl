#:: Chalice of Conquest quest
sub EVENT_PLAYER_PICKUP {
	#:: Match 12274 - Chalice of Conquest, ground spawn created by #Captain_Klunga.pl
	if ($picked_up_id == 12274) {
		#:: Send a signal "1" to Dagnor's Cauldron >> #Captain_Klunga (70072) with no delay
		quest::signalwith(70072, 1, 0);
	}
}
