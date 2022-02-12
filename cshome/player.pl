sub EVENT_COMMAND {
  if ($text=~/test/i) {
    PerlPacket::SendTo(LiveOP_MOTD, $client);
    my $packet = "LiveOP_MOTD";
    PerlPacket::SendTo($packet, $client);
    my $packet = 0x01b2;
    PerlPacket::SendTo($packet, $client);
    my $packet = "0x01b2";
    PerlPacket::SendTo($packet, $client);
    
  }
}
