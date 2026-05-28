sub EVENT_AGGRO {
  quest::say("Your bones will be crushed by the Kromrif of Kael Drakkel!");
}

sub EVENT_DEATH {
  #:: Send signal "0" to Kael Drakkel >> 113553.pl (Throne)
  quest::signal(113553, 0);
}