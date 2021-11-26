sub EVENT_PLAYER_PICKUP {
	if ($picked_up_id == 147636) { # Ear of Corn (147636)
		if (quest::istaskactivityactive(273, 1)) {
			$client->Message(15, "yay, some corn!  But now what?");
			quest::updatetaskactivity(273, 1, 1);
		}
		else {
			$client->Message(15, "yay, some corn!");
		}
	}
}
