sub EVENT_COMMAND {
  if ($text=~/1/i) {
    PerlPacket::SendTo(OP_MOTD, $client);
}
