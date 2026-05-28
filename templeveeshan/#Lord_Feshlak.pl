sub EVENT_AGGRO {
  #:: Match a The Temple of Veeshan >> Vukuz (124015) on the entity list
  my $guard1 = $entity_list->GetMobByNpcTypeID(124015);
  #:: Match a The Temple of Veeshan >> Bryrym (124005) on the entity list
  my $guard2 = $entity_list->GetMobByNpcTypeID(124005);

  if ($guard1) {
    my $call_guard1 = $guard1->CastToNPC();
    #:: Add the current client to Vukuz's hate list
    $call_guard1->AddToHateList($client, 1);
  }

  if ($guard2) {
    my $call_guard2 = $guard2->CastToNPC();
    #:: Add the current client to Bryrym's hate list
    $call_guard2->AddToHateList($client, 1);
  }
}
