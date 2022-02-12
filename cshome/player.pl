sub EVENT_COMMAND {
  if ($text=~/1/i) {
    PerlPacket::SendTo(LiveOP_MOTD, $client);
    my $packet = "LiveOP_MOTD";
    PerlPacket::SendTo($packet, $client);

    
  }
  elsif ($text=~/2/i) {
      my $packet = 0x01b2;
    PerlPacket::SendTo($packet, $client);
  }
  elsif ($text=~/3/i) {
     my $packet = "0x01b2";
    PerlPacket::SendTo($packet, $client);
   }
}
