sub EVENT_COMMAND {
	if ($text=~/1/i) {
		PerlPacket::SendTo(0x01b2, $client);
	}
	elsif ($text=~/2/i) {
		PerlPacket::SetnTo("0x01b2", $client);
	}
}
