sub EVENT_SPAWN {
  #:: Create a timer 'tjudawos' that triggers every 1 second (1 sec)
  quest::settimer("tjudawos", 1);
}

sub EVENT_TIMER {
  #:: Match a Sleeper's Tomb >> #Kerafyrm (128089) on the entity list
  $kerafyrm = $entity_list->GetMobByNpcTypeID(128089);
  #:: Match the timer 'tjudawos'
  if ($timer eq "tjudawos") {
    if ($kerafyrm) {
      #:: Stop the timer 'tjudawos'
      quest::stoptimer("tjudawos");
      #:: Depop with spawn timer active
      quest::depop_withtimer();
    }
  }
}
