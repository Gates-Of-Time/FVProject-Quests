sub EVENT_SAY {
  #:: Match if faction is not Apprehensive and not Dubious
  if (($faction != 6) && ($faction != 7)) {
    if ($text =~ /hail/i) {
      quest::say("Greetings, little thing. You have entered into the great city of Kael Drakkel, home of the Kromzek as well as a few of my kind, the Kromrif. If you are to walk among my people as a peer you must prove yourself as a friend, not a foe.");
    }
    elsif ($text =~ /prove myself/i) {
      quest::say("Leave this place then and return when you have waged war upon the Coldain. Remove their heads from their bodies and return them to me. I will spread the word of your deeds amongst my people if you do so, $name.");
    }
    elsif ($text =~ /coldain/i) {
      quest::say("The Coldain are the ice dwarves who dwell in the city of Thurgadin. They are a blight upon the land known as Velious, speaking the word of their god, Brell.");
    }
  }
  else {
    quest::say("I will do nothing to help beings like you!");
  }
}

sub EVENT_ITEM {
  #:: Match if faction is not Apprehensive and not Dubious
  if (($faction != 6) && ($faction != 7)) {
    #:: Match a 30081 - Coldain Head
    if (plugin::takeItems(30081 => 1)) {
      quest::say("Very good, $name. Slay more of the beasts and your name will be known by all of the Kromrif!");
      #:: Grant a small amount of experience
      quest::exp(5000);
      #:: Set factions
      quest::faction(419, 10);  #:: + Kromrif
      quest::faction(448, 10);  #:: + Kromzek
      quest::faction(430, -30); #:: - Claws of Veeshan
      quest::faction(406, -30); #:: - Coldain
    }
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}

