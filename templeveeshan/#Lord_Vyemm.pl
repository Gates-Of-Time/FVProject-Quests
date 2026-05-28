sub EVENT_AGGRO {
  #:: Match a The Temple of Veeshan >> Hsrek (124014) on the entity list
  my $guard1 = $entity_list->GetMobByNpcTypeID(124014);
  #:: Match a The Temple of Veeshan >> Lurien (124013) on the entity list
  my $guard2 = $entity_list->GetMobByNpcTypeID(124013);

  if ($guard1) {
    my $call_guard1 = $guard1->CastToNPC();
    #:: Add the current client to Hsrek's hate list
    $call_guard1->AddToHateList($client, 1);
  }

  if ($guard2) {
    my $call_guard2 = $guard2->CastToNPC();
    #:: Add the current client to Lurien's hate list
    $call_guard2->AddToHateList($client, 1);
  }
}
