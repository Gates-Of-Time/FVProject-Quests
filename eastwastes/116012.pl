sub EVENT_SPAWN {
    #:: Create a timer '98' that triggers every 2 seconds (2 sec).
    quest::settimer(98, 2);
}

sub EVENT_TIMER {
    #:: Match a Eastern Wastes >> #Chief_Ry`Gorr (116577) on the entity list.
    my $check = $entity_list->GetMobByNpcTypeID(116577);

    if ($timer == 98 && $check) {
        #:: Stop the timer '98'
        quest::stoptimer(98);
        #:: Create a timer '94' that triggers every 1000 seconds (16 min 40 sec).
        quest::settimer(94, 1000);
    }
    elsif ($timer == 98) {
        #:: Stop the timer '98'
        quest::stoptimer(98);
    }
    elsif ($timer == 94) {
        #:: Depop all Eastern Wastes >> #Chief_Ry`Gorr (116012)
        quest::depopall(116012);
    }
}