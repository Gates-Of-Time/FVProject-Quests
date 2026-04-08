sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Hail to ye as well offlander. I bid you welcome to the Icy Mug, one o' the finest establishments for a drink in Thurgadin. Whether it's [souvenirs] or stories yer lookin for, you've come to the right place.");
  }
  elsif ($text =~ /souvenirs/i) {
    quest::say("Here at the Icy Mug we have our own signature stein fer yer drinkin pleasure. For only 5 gold pieces ye can take one home to show yer kinfolk.");
  }
}

sub EVENT_ITEM {
  if ($gold == 5) {
    quest::say("Here ya go!");
    #:: Give a 30145 - The Icy Mug Souvenir Stein.
    quest::summonitem(30145);
  }
  else {
    quest::say("I have no need for this, $name.");
  }

  #:: Return unused items.
  plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
	#:: Match signal "1" from Thurgadin >> Ronodun (115019)
	if ($signal == 1) {
		quest::say("What's the rush there, youngster?");
		#:: Send a signal "1" to Thurgadin >> Ronodun (115019) with no delay
		quest::signalwith(115019,1);
	}
	#:: Match signal "2" from Thurgadin >> Ronodun (115019)
	elsif ($signal == 2) {
		quest::say("That's not good, the Grand Historian's mighty protective of his daughter. What he do after he caught ya?");
		#:: Send a signal "2" to Thurgadin >> Ronodun (115019) with no delay
		quest::signalwith(115019,2);
	}
	#:: Match signal "3" from Thurgadin >> Ronodun (115019)
	elsif ($signal == 3) {
		#:: Send a signal "3" to Thurgadin >> Ronodun (115019) with no delay
		quest::signalwith(115019,3);
	}
	#:: Match signal "4" from Thurgadin >> Ronodun (115019)
	elsif ($signal == 4) {
		quest::say("Well, coulda been worse. A month's worth of sermons is a far sight better than a trip to the bottom of the Dain's well.");
		#:: Send a signal "4" to Thurgadin >> Ronodun (115019) with no delay
		quest::signalwith(115019,4);
	}
	#:: Match signal "5" from Thurgadin >> Ronodun (115019)
	elsif ($signal == 5) {
		quest::say("Here ya go, Ronodun, on the house this time. Drink fast, don't need the Grand Historian to come lookin' fer ya...");
		#:: Send a signal "5" to Thurgadin >> Ronodun (115019) with no delay
		quest::signalwith(115019,5);
	}
	#:: Match signal "6" from Thurgadin >> Ronodun (115019)
	elsif ($signal == 6) {
		quest::say("My pleasure, son. You just remember to keep me in all those prayers you'll be sayin this month. Hahhahah!");
	}
}