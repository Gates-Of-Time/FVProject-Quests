sub EVENT_SPAWN {
  #:: Create a timer 'vyskudra' that triggers every 1 second (1 sec)
  quest::settimer("vyskudra", 1);
}

sub EVENT_TIMER {
  #:: Match a Sleeper's Tomb >> #Kerafyrm (128089) on the entity list
  $kerafyrm = $entity_list->GetMobByNpcTypeID(128089);
  #:: Match the timer 'vyskudra'
  if ($timer eq "vyskudra") {
    if ($kerafyrm) {
      #:: Stop the timer 'vyskudra'
      quest::stoptimer("vyskudra");
      #:: Depop with spawn timer active
      quest::depop_withtimer();
    }
  }
}
