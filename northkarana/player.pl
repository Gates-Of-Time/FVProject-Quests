sub EVENT_PLAYER_PICKUP {
	#:: Match a 148000 - Ear of Corn
	if ($picked_up_id == 148000) {
		if (quest::istaskactivityactive(273, 1)) {
			$client->Message(0, "Yay, some corn!  But now what?  Better find someone who knows what they are doing...");
			quest::updatetaskactivity(273, 1, 1);
		}
		else {
			$client->Message(15, "Yay, some corn!");
		}
	}
}
