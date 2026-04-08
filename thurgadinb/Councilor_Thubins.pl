sub EVENT_SAY {
  if ($text =~ /Hail/i) {
    quest::say("Come to see the excitement of the court have you friend? I'm just now working on my latest draft for a new waste disposal ordinance to present to the Dain, it's absolutely fascinating!");
  }
}

sub EVENT_SIGNAL {
  #:: Match if signal from thurgadinb/129097.pl is "1"
  if ($signal == 1) {
    quest::moveto(-53,703,39,129,1);
  }

  #:: Match if signal from thurgadinb/129098.pl is "2"
  elsif ($signal == 2) {
    quest::moveto(-20,535,68,0,1);
  }
}

