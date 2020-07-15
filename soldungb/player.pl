sub EVENT_TARGET_CHANGE {
	if ($ulevel > 1) {
		if ($status > 80) {
			if ($client->GetTarget()->GetCleanName() eq "Lord Nagafen") {
				quest::ze(0, "I will not fight you, but I will banish you!");
				#:: Move the client to Lavastorm at the specified coordinates
				$client->MovePC(27, -64, 262, -93.96, 0);
			}
		}
	}
}
