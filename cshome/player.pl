sub EVENT_COMMAND {
	if ($text=~/1/i) {
		PerlPacket::SendTo(MOTD, $client);
	}
	elsif ($text=~/2/i) {
		PerlPacket::SetnTo(Save, $client);
	}
}
