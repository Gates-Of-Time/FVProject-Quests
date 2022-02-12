sub EVENT_COMMAND {
  if ($text=~/hail/i) {
    quest::gmsay("Hello there.");
  }
}

sub EVENT_ENTERZONE {

PerlPacket::SendTo(LiveOP_MOTD, $client);

}
