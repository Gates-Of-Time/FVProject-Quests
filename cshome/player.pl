sub EVENT_ENTERZONE {

PerlPacket::SendTo("LiveOP_MOTD", $client);

}
