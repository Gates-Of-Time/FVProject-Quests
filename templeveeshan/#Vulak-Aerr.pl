sub EVENT_SPAWN {
  #:: Depop all The Temple of Veeshan >> NAMESCRIPT (124021)
  quest::depopall(124021);
  #:: Depop all The Temple of Veeshan >> NAMESCRIPT (124080)
  quest::depopall(124080);
  #:: Depop all The Temple of Veeshan >> NAMESCRIPT (124157)
  quest::depopall(124157);
  #:: Spawn a The Temple of Veeshan >> NAMESCRIPT (124157), without grid or guild war, at the given location
  quest::spawn2(124157, 0, 0, -796, 564, 129, 102);
  #:: Spawn a The Temple of Veeshan >> NAMESCRIPT (124157), without grid or guild war, at the given location
  quest::spawn2(124157, 0, 0, -800, 510, 129, 66);
  #:: Spawn a The Temple of Veeshan >> NAMESCRIPT (124157), without grid or guild war, at the given location
  quest::spawn2(124157, 0, 0, -796, 463, 129, 33);
  #:: Spawn a The Temple of Veeshan >> NAMESCRIPT (124157), without grid or guild war, at the given location
  quest::spawn2(124157, 0, 0, -680, 509, 129, 190);
  #:: Spawn a The Temple of Veeshan >> NAMESCRIPT (124157), without grid or guild war, at the given location
  quest::spawn2(124157, 0, 0, -687, 562, 129, 160);
  #:: Spawn a The Temple of Veeshan >> NAMESCRIPT (124157), without grid or guild war, at the given location
  quest::spawn2(124157, 0, 0, -680, 461, 129, 224);
}

sub EVENT_AGGRO {
  #:: Match a The Temple of Veeshan >> NAMESCRIPT (124157) on the entity list
  my $guards = $entity_list->GetMobByNpcTypeID(124157);

  if ($guards) {
    my $guard_npc = $guards->CastToNPC();
    #:: Add the current client to NAMESCRIPT's hate list
    $guard_npc->AddToHateList($client, 1);
  }
}