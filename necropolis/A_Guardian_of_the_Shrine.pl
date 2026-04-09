sub EVENT_SPAWN {
  my $x = $npc->GetX();
  my $y = $npc->GetY();
  #:: Create a proximity, 14 units across, 0 units tall, default proximity say mode
  quest::set_proximity($x - 7, $x + 7, $y - 7, $y + 7);
}

sub EVENT_ENTER {
  #:: Match a Dragon Necropolis >> Jaled_Dar`s_shade (123011) on the entity list
  my $cheater = $entity_list->GetMobByNpcTypeID(123011);
  if ($cheater) {
    my $addcheater = $cheater->CastToNPC();
    $addcheater->AddToHateList($client, 1);
  }
}

