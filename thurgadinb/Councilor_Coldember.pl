sub EVENT_SAY {
  if ($text =~ /Hail/i) {
    quest::say("Watch yer step around the Icewell there, $name. I've heard that a giant beast lives down in the pit waiting to devour those who earn the punishment of being dropped down there. Might be just I rumor but I swear I've heard some sounds comin up from the well that don't resemble any of the creatures we put in there.");
  }
}

sub EVENT_SIGNAL {
  #:: Match if signal from thurgadinb/129097.pl is "1"
  if ($signal == 1) {
    quest::moveto(93,655,39,244,1);
  }

  #:: Match if signal from thurgadinb/129098.pl is "2"
  elsif ($signal == 2) {
    quest::moveto(15,543,66,0,1);
  }
}

