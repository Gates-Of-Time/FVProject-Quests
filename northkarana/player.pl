sub EVENT_PLAYER_PICKUP {
	#:: Match a 148000 - Ear of Corn
	if ($picked_up_id == 148000) {
		if (quest::istaskactivityactive(273, 1)) {
			$client->Message(15, "yay, some corn!  But now what?");
			quest::updatetaskactivity(273, 1, 1);
		}
		else {
			$client->Message(15, "yay, some corn!");
		}
	}
}
