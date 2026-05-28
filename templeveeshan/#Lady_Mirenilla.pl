sub EVENT_AGGRO {
  #:: Match a The Temple of Veeshan >> Wel-Wnas (124092) on the entity list
  my $guard1 = $entity_list->GetMobByNpcTypeID(124092);
  #:: Match a The Temple of Veeshan >> Gra-Vloren (124091) on the entity list
  my $guard2 = $entity_list->GetMobByNpcTypeID(124091);

  if ($guard1) {
    my $call_guard1 = $guard1->CastToNPC();
    #:: Add the current client to Wel-Wnas's hate list
    $call_guard1->AddToHateList($client, 1);
  }

  if ($guard2) {
    my $call_guard2 = $guard2->CastToNPC();
    #:: Add the current client to Gra-Vloren's hate list
    $call_guard2->AddToHateList($client, 1);
  }
}
