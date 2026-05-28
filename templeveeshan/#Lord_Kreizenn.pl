sub EVENT_AGGRO {
  #:: Match a The Temple of Veeshan >> Kedrak (124093) on the entity list
  my $guard1 = $entity_list->GetMobByNpcTypeID(124093);
  #:: Match a The Temple of Veeshan >> Carx-Vean (124094) on the entity list
  my $guard2 = $entity_list->GetMobByNpcTypeID(124094);

  if ($guard1) {
    my $call_guard1 = $guard1->CastToNPC();
    #:: Add the current client to Kedrak's hate list
    $call_guard1->AddToHateList($client, 1);
  }

  if ($guard2) {
    my $call_guard2 = $guard2->CastToNPC();
    #:: Add the current client to Carx-Vean's hate list
    $call_guard2->AddToHateList($client, 1);
  }
}
