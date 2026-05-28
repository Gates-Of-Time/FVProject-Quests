sub EVENT_AGGRO {
  #:: Match a Temple of Veeshan >> Lady_Mirenilla (124077) on the entity list
  my $guard1 = $entity_list->GetMobByNpcTypeID(124077);
  #:: Match a Temple of Veeshan >> Gra_Vloren (124091) on the entity list
  my $guard2 = $entity_list->GetMobByNpcTypeID(124091);

  if ($guard1) {
    my $call_guard1 = $guard1->CastToNPC();
    $call_guard1->AddToHateList($client, 1);
  }

  if ($guard2) {
    my $call_guard2 = $guard2->CastToNPC();
    $call_guard2->AddToHateList($client, 1);
  }
}
