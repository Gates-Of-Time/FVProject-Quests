sub EVENT_AGGRO {
    #:: Match a Temple of Veeshan >> #Lord_Vyemm (124017) on the entity list
    my $guard1 = $entity_list->GetMobByNpcTypeID(124017);
    #:: Match a Temple of Veeshan >> Lurian (124013) on the entity list
    my $guard2 = $entity_list->GetMobByNpcTypeID(124013);

    if ($guard1) {
        my $call_guard1 = $guard1->CastToNPC();
        $call_guard1->AddToHateList($client, 1);
    }

    if ($guard2) {
        my $call_guard2 = $guard2->CastToNPC();
        $call_guard2->AddToHateList($client, 1);
    }
}
