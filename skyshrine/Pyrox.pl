sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Greetings, traveler. I'm the keeper of possessions for the Skyshrine. Any friend of the shrine can safely store their belongings with me.");
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");
  #:: Return unused items
  plugin::returnUnusedItems();
}

sub EVENT_SIGNAL {
  #:: Match if signal from skyshrine/TODO.pl is "66"
  if ($signal == 66) {
    quest::shout("BEWARE! BEWARE! The Sleeper has been awakened! He means death for all who remain here! Time is short, flee the Skyshrine now if you value your life!");
  }
}