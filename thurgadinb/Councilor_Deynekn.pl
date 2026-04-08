sub EVENT_SIGNAL {
  #:: Match if signal from thurgadinb/129097.pl is "1"
  if ($signal == 1) {
    quest::moveto(92,703,39,131,1);
  }

  #:: Match if signal from thurgadinb/129098.pl is "2"
  elsif ($signal == 2) {
    quest::moveto(20,534,68,0,1);
  }
}

