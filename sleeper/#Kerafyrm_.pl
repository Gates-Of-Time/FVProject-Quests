sub EVENT_SPAWN {
  #:: Create a timer '1' that triggers every 1 second (1 sec)
  quest::settimer(1, 1);
}

sub EVENT_TIMER {
  #:: Match the timer '1'
  if ($timer == 1) {
    #:: Set appearance to Sit
    $npc->SetAppearance(1);
    #:: Stop the timer '1'
    quest::stoptimer(1);
  }
}

sub EVENT_SIGNAL {
  #:: Match if signal from sleeper/TODO.pl is "66"
  if ($signal == 66) {
    quest::shout("I AM FREE!");
    #:: Depop with spawn timer active
    quest::depop_withtimer();
    #:: Spawn a Sleeper's Tomb >> #Kerafyrm (128089), without grid or guild war, at the given location
    quest::spawn2(128089, 1, 0, -1499, -2344.8, -1052.8, 0);
  }
}
