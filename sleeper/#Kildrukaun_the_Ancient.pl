sub EVENT_SPAWN {
  #:: Create a timer 'kildrukaun' that triggers every 1 second (1 sec)
  quest::settimer("kildrukaun", 1);
}

sub EVENT_TIMER {
  #:: Match a Sleeper's Tomb >> #Kerafyrm (128089) on the entity list
  $kerafyrm = $entity_list->GetMobByNpcTypeID(128089);
  #:: Match the timer 'kildrukaun'
  if ($timer eq "kildrukaun") {
    if ($kerafyrm) {
      #:: Stop the timer 'kildrukaun'
      quest::stoptimer("kildrukaun");
      #:: Depop with spawn timer active
      quest::depop_withtimer();
    }
  }
}
