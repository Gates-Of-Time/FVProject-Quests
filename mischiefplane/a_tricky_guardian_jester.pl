sub EVENT_SPAWN {
  #:: Create a timer '1' that triggers every 1800 seconds (30 min 0 sec)
  quest::settimer(1, 1800);
}

sub EVENT_SIGNAL {
  #:: Match if signal from mischiefplane/Bristlebane_the_King_of_Thieves.pl is "10"
  if ($signal == 10) {
    #:: Depop without spawn timer
    quest::depop();
  }
}

sub EVENT_TIMER {
  if ($timer == 1) {
    #:: Depop without spawn timer
    quest::depop();
  }
}
