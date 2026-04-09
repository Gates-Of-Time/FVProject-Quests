sub EVENT_AGGRO {
  #:: Match a The Plane of Growth >> a_serene_forest_spirit (127024) on the entity list
  my $wisp_mob = $entity_list->GetMobByNpcTypeID(127024);
  #:: Match a The Plane of Growth >> a_serene_forest_spirit (127025) on the entity list
  my $wisp2_mob = $entity_list->GetMobByNpcTypeID(127025);
  #:: Match a The Plane of Growth >> an_agitated_forest_spirit (127031) on the entity list
  my $wisp3_mob = $entity_list->GetMobByNpcTypeID(127031);

  if ($wisp_mob) {
    my $wisp_mobnpc = $wisp_mob->CastToNPC();
    $wisp_mobnpc->AddToHateList($client, 1);
  }
  if ($wisp2_mob) {
    my $wisp2_mobnpc = $wisp2_mob->CastToNPC();
    $wisp2_mobnpc->AddToHateList($client, 1);
  }
  if ($wisp3_mob) {
    my $wisp3_mobnpc = $wisp3_mob->CastToNPC();
    $wisp3_mobnpc->AddToHateList($client, 1);
  }
}

