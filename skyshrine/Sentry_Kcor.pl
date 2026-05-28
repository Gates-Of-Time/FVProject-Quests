sub EVENT_SAY {
  if ($text =~ /hail/i) {
    #:: Require kindly or better faction
    if ($faction < 4) {
      quest::say("Be quick for the Guardians may not appreciate you leaving your post.");
    }
    else {
      quest::say("Halt, who goes there? Hmmm. What manner of strangers are you? Let it be known that the Kin hold no love for outsiders, only those truly worthy may walk amongst the Kin.");
    }
  }
}

sub EVENT_ITEM {
  #:: Match a 29062 - Giant Warrior Helmet
  if (plugin::takeItems(29062 => 1)) {
    quest::say("Very good, you are on your way to proving yourself.");
    #:: Set factions
    quest::faction(430, 5);  #:: + Claws of Veeshan
    quest::faction(436, 5);  #:: + Yelinak
    quest::faction(448, -5); #:: - Kromzek
  }
  #:: Match a 29624 - Mercenary Assignments
  elsif (plugin::takeItems(29624 => 1)) {
    quest::say("Ahhh yes! Well done $class. Here is your reward. Your status with our people grows with each interloper you eradicate.");
    #:: Give exactly 13 copper, 6 silver, and 6 gold
    quest::givecash(13, 6, 6, 0);
    #:: Set factions
    quest::faction(430, 5);  #:: + Claws of Veeshan
    quest::faction(436, 5);  #:: + Yelinak
    quest::faction(448, -5); #:: - Kromzek
  }
  else {
    quest::say("I have no use for this, $name.");

    #:: Return unused items
    plugin::returnUnusedItems();
  }
}
