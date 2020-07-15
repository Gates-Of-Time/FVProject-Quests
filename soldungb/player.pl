sub EVENT_TARGET_CHANGE {
	if ($ulevel > 52) {
		quest::gmsay("User Level Match.");
		if ($status > 80) {
			quest::gmsay("User Status Match.");
			if ($client) {
				quest::gmsay("Client $client Match.");
				$Target = $client->GetTarget()->GetCleanName();
				quest::gmsay("$Target.");
				#quest::ze(0,"I will not fight you, but I will banish you!");
				#$client->MovePC(27,-64,262,-93.96,0); # Zone: lavastorm
			}
		}
	}
}
