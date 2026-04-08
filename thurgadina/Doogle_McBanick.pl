sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Welcome ta me bar. I suggest ye sit down and have a drink cause if'n ye ai'nt drinkin ye've no business bein 'ere.");
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");

  #:: Return unused items.
  plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
	#:: Match if signal from thurgadina/Horasug.pl is "1"
	if ($signal == 1) {
		quest::say("Hello there Horasug! What brings ya here?");
		#:: Send a signal "3" to Thurgadin >> Horasug (115013) with a 8000 second delay
		quest::signalwith(115013, 3, 8000);
	}
	#:: Match if signal from thurgadina/Horasug.pl is "2"
	elsif ($signal == 2) {
		quest::say("A vision you say? What exactly was this a vision of?");
		#:: Send a signal "4" to Thurgadin >> Horasug (115013) with no delay
		quest::signalwith(115013, 4);
	}
	#:: Match if signal from thurgadina/Horasug.pl is "3"
	elsif ($signal == 3) {
		#:: Send a signal "5" to Thurgadin >> Horasug (115013) with a 7000 second delay
		quest::signalwith(115013, 5, 7000);
	}
	#:: Match if signal from thurgadina/Horasug.pl is "4"
	elsif ($signal == 4) {
		quest::say("Well, you came to the right place, Horasug. A few of these ales will fill you with all the visions you can handle.");
	}
}