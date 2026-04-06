sub EVENT_SPAWN {
    #:: Create a timer '99' that triggers every 2 seconds (2 sec).
    quest::settimer(99, 2);
}

sub EVENT_TIMER {
    #:: Match a Eastern Wastes >> #Chief_Ry`Gorr (116577) on the entity list.
    my $check = $entity_list->GetMobByNpcTypeID(116577);

    if ($timer == 99 && $check) {
        #:: Stop the timer '99'
        quest::stoptimer(99);
        #:: Create a timer '92' that triggers every 1000 seconds (16 min 40 sec).
        quest::settimer(92, 1000);
    }
    elsif ($timer == 99) {
        #:: Stop the timer '99'
        quest::stoptimer(99);
    }
    elsif ($timer == 92) {
        #:: Depop all Eastern Wastes >> #Chief_Ry`Gorr (116006)
        quest::depopall(116006);
    }
}