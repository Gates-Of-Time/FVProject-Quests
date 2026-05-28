sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("There are many places for the likes of you. Why don't you go find one right now and leave me alone.");
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");

  #:: Return unused items
  plugin::returnUnusedItems();
}
