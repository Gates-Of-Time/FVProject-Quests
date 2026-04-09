sub EVENT_AGGRO {
  #:: Match a The Plane of Growth >> an_entoling_culler (127027) on the entity list
  my $entollingculler_mob = $entity_list->GetMobByNpcTypeID(127027);
  #:: Match a The Plane of Growth >> an_entoling_essence_channeler (127028) on the entity list
  my $entolingchannel_mob = $entity_list->GetMobByNpcTypeID(127028);
  #:: Match a The Plane of Growth >> an_entoling_essence_channeler (127103) on the entity list
  my $entolingchannel2_mob = $entity_list->GetMobByNpcTypeID(127103);
  #:: Match a The Plane of Growth >> an_entoling_essence_conduit (127057) on the entity list
  my $entolingconduit_mob = $entity_list->GetMobByNpcTypeID(127057);
  #:: Match a The Plane of Growth >> an_entoling_essence_conduit (127102) on the entity list
  my $entolingconduit2_mob = $entity_list->GetMobByNpcTypeID(127102);
  #:: Match a The Plane of Growth >> an_entoling_harvester (127026) on the entity list
  my $entolingharvester_mob = $entity_list->GetMobByNpcTypeID(127026);

  if ($entollingculler_mob) {
    my $entollingculler_mobnpc = $entollingculler_mob->CastToNPC();
    $entollingculler_mobnpc->AddToHateList($client, 1);
  }
  if ($entolingchannel_mob) {
    my $entolingchannel_mobnpc = $entolingchannel_mob->CastToNPC();
    $entolingchannel_mobnpc->AddToHateList($client, 1);
  }
  if ($entolingchannel2_mob) {
    my $entolingchannel2_mobnpc = $entolingchannel2_mob->CastToNPC();
    $entolingchannel2_mobnpc->AddToHateList($client, 1);
  }
  if ($entolingconduit_mob) {
    my $entolingconduit_mobnpc = $entolingconduit_mob->CastToNPC();
    $entolingconduit_mobnpc->AddToHateList($client, 1);
  }
  if ($entolingconduit2_mob) {
    my $entolingconduit2_mobnpc = $entolingconduit2_mob->CastToNPC();
    $entolingconduit2_mobnpc->AddToHateList($client, 1);
  }
  if ($entolingharvester_mob) {
    my $entolingharvester_mobnpc = $entolingharvester_mob->CastToNPC();
    $entolingharvester_mobnpc->AddToHateList($client, 1);
  }
}

