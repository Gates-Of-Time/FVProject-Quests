my $x;
my $y;
my $z;
my $exist;

sub EVENT_SPAWN {
  $x = $npc->GetX();
  $y = $npc->GetY();
  #:: Create a proximity, 100 units across, 0 units tall, default proximity say mode
  quest::set_proximity($x - 50, $x + 50, $y - 50, $y + 50);
}

sub EVENT_ENTER {
  $x = $npc->GetX();
  $y = $npc->GetY();
  $z = $npc->GetZ();
  #:: Match a Eastern Wastes >> Tanik_Greskil (116542) on the entity list
  $exist = $entity_list->GetMobByNpcTypeID(116542);
  if ($exist) {
    quest::emote("in the snow.");
  }
  else {
    quest::emote("and uncover the body of an injured coldain.");
    #:: Spawn a Eastern Wastes >> Tanik_Greskil (116542), without grid or guild war, at the current location.
    quest::spawn2(116542,0,0,$x,$y,$z,0);
    #:: Depop with spawn timer active
    quest::depop_withtimer();
  }
}
