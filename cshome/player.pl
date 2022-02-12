sub EVENT_COMMAND {
  if ($text=~/test/i) {
    PerlPacket::SendTo(LiveOP_MOTD, $client);
    my $packet = "LiveOP_MOTD";
    PerlPacket::SendTo($packet, $client);

    
  }
  elsif ($text=~/test2/i) {
      my $packet = 0x01b2;
    PerlPacket::SendTo($packet, $client);
  }
  elsif ($text=~/test3/i) {
     my $packet = "0x01b2";
    PerlPacket::SendTo($packet, $client);
   }
}
