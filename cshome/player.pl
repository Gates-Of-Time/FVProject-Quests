sub EVENT_COMMAND {
  if ($text=~/1/i) {
    PerlPacket::SendTo(OP_MOTD, $client);
   }
   if ($text=~/2/i) {
    PerlPacket::SetnTo(OP_Save, $client);
   }
   
}
