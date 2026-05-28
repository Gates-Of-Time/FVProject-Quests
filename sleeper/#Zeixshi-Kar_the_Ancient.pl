sub EVENT_SPAWN {
  #:: Create a timer 'zeixshi' that triggers every 1 second (1 sec)
  quest::settimer("zeixshi", 1);
}

sub EVENT_TIMER {
  #:: Match a Sleeper's Tomb >> #Kerafyrm (128089) on the entity list
  $kerafyrm = $entity_list->GetMobByNpcTypeID(128089);
  #:: Match the timer 'zeixshi'
  if ($timer eq "zeixshi") {
    if ($kerafyrm) {
      #:: Stop the timer 'zeixshi'
      quest::stoptimer("zeixshi");
      #:: Depop with spawn timer active
      quest::depop_withtimer();
    }
  }
}
