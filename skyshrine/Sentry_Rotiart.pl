sub EVENT_ITEM {
  #:: Match a 29626 - Dispelling device
  if (plugin::takeItems(29626 => 1)) {
    my $x = $npc->GetX();
    my $y = $npc->GetY();
    my $z = $npc->GetZ();
    my $h = $npc->GetHeading();

    #:: Spawn a skyshrine >> a_kromzek_spy (114437) at this NPC's location
    my $traitor = quest::spawn2(114437, 0, 0, $x, $y, $z, $h);
    my $attack = $entity_list->GetMobID($traitor);
    my $traitorattack = $attack->CastToNPC();
    $traitorattack->AddToHateList($client, 1);
    quest::depop_withtimer();
  }
  else {
    #:: Return unused items
    plugin::returnUnusedItems();
  }
}
