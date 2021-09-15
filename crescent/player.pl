#:: Just in case people do not select an appropriate starting zone at char create.

sub EVENT_ENTERZONE {
	if ($status < 101) {
		#:: Reset the player's bind point to a location in Freeport West (ZoneID 9)
		$client->SetBindPoint(9, 181, 335, -25.50);
		$client->SetStartZone(9, 181, 335, -25.50);
		quest::rebind(9, 181, 335, -25.50);
		#:: Move the player to freportw
		quest::movepc(9, 181, 335, -25.50);
	}
 }
