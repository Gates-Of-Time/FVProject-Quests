#:: Proximity ambush trigger.

my $x;
my $y;
my $z;

sub EVENT_SPAWN {
  $x = $npc->GetX();
  $y = $npc->GetY();
  #:: Create a proximity, 40 units across, 0 units tall, default proximity say mode
  quest::set_proximity($x - 20, $x + 20, $y - 20, $y + 20);
}

sub EVENT_ENTER {
  $x = $npc->GetX();
  $y = $npc->GetY();
  $z = $npc->GetZ();
  quest::emote("been ambushed!");
  #:: Spawn a Eastern Wastes >> Kromrif_Death_Squad (116540), without grid or guild war, at the current location.
  quest::spawn2(116540, 0, 0, $x + 5, $y - 5, $z, 0);
  #:: Spawn a Eastern Wastes >> Kromrif_Death_Squad (116540), without grid or guild war, at the current location.
  quest::spawn2(116540, 0, 0, $x - 5, $y + 5, $z, 0);
  #:: Depop with spawn timer active
  quest::depop_withtimer();
}
