sub EVENT_AGGRO {
    #:: Match a Temple of Veeshan >> Belijor_the_Emerald_Eye (124057) on the entity list
    my $guard1 = $entity_list->GetMobByNpcTypeID(124057);
    #:: Match a Temple of Veeshan >> Nelaarn_the_Ebon_Claw (124089) on the entity list
    my $guard2 = $entity_list->GetMobByNpcTypeID(124089);
    #:: Match a Temple of Veeshan >> Ajorek_the_Crimson_Fang (124088) on the entity list
    my $guard3 = $entity_list->GetMobByNpcTypeID(124088);
    #:: Match a Temple of Veeshan >> #Eashen_of_the_Sky (124004) on the entity list
    my $guard4 = $entity_list->GetMobByNpcTypeID(124004);

    if ($guard1) {
        my $call_guard1 = $guard1->CastToNPC();
        $call_guard1->AddToHateList($client, 1);
    }

    if ($guard2) {
        my $call_guard2 = $guard2->CastToNPC();
        $call_guard2->AddToHateList($client, 1);
    }

    if ($guard3) {
        my $call_guard3 = $guard3->CastToNPC();
        $call_guard3->AddToHateList($client, 1);
    }

    if ($guard4) {
        my $call_guard4 = $guard4->CastToNPC();
        $call_guard4->AddToHateList($client, 1);
    }
}
