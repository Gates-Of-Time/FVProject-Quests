sub EVENT_AGGRO {
  #:: Match a The Temple of Veeshan >> NAMESCRIPT (124016) on the entity list
  my $guard1 = $entity_list->GetMobByNpcTypeID(124016);
  #:: Match a The Temple of Veeshan >> NAMESCRIPT (124012) on the entity list
  my $guard2 = $entity_list->GetMobByNpcTypeID(124012);

  if ($guard1) {
    my $call_guard1 = $guard1->CastToNPC();
    #:: Add the current client to NAMESCRIPT's hate list
    $call_guard1->AddToHateList($client, 1);
  }

  if ($guard2) {
    my $call_guard2 = $guard2->CastToNPC();
    #:: Add the current client to NAMESCRIPT's hate list
    $call_guard2->AddToHateList($client, 1);
  }
}
