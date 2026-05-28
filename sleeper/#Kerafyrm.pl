sub EVENT_SPAWN {
  quest::shout("ZERZURA!");
  quest::setglobal("kerafyrm", 1, 7, "F");
  quest::spawn_condition(sleeper, 2, 1);
  quest::spawn_condition(sleeper, 1, 0);
  quest::forcedooropen(46);
  #:: Create a timer 'depop' that triggers every 1 second (1 sec)
  quest::settimer("depop", 1);
}

sub EVENT_TIMER {
  #:: Match the timer 'depop'
  if ($timer eq "depop") {
    if ($x == -675) {
      #:: Spawn a Sleeper's Tomb >> #Kerafyrm_ (128095), without grid or guild war, at the given location
      quest::spawn2(128095, 2, 0, 1014, -981, -125, 0);
      #:: Stop the timer 'depop'
      quest::stoptimer("depop");
      #:: Depop without spawn timer
      quest::depop();
    }
  }
}

sub EVENT_SLAY {
  quest::shout("Begone insect, I have much slaying yet to do!");
}

sub EVENT_NPC_SLAY {
  quest::shout("Begone insect, I have much slaying yet to do!");
}

sub EVENT_DEATH {
  quest::setglobal("kerafyrm", 3, 7, "F");
  #:: Stop the timer 'depop'
  quest::stoptimer("depop");
  #:: Depop without spawn timer
  quest::depop();
}