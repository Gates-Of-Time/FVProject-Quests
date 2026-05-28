sub EVENT_SPAWN {
  #:: Create a timer 'zone' that triggers every 1 second (1 sec)
  quest::settimer("zone", 1);
}

sub EVENT_TIMER {
  #:: Match the timer 'zone'
  if ($timer eq "zone") {
    if ($x == 0) {
      quest::setglobal("kerafyrm", 2, 7, "F");
      #:: Stop the timer 'zone'
      quest::stoptimer("zone");
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
  #:: Stop the timer 'zone'
  quest::stoptimer("zone");
  #:: Depop without spawn timer
  quest::depop();
}
