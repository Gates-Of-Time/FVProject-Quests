sub EVENT_SIGNAL {
  #:: Match if signal from necropolis/Neb.pl is "99"
  if ($signal == 99) {
    quest::say("Chita ve ni ne, ni ne Neb!");
    #:: Send a signal "101" to Dragon Necropolis >> Neb (123045) with a 1000 second delay
    quest::signalwith(123045, 101, 1000);
  }
}

