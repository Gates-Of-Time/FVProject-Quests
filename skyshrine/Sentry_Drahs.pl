sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("I would be careful wandering the maze. Many have gotten lost and never come out the other end.");
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");

  #:: Return unused items
  plugin::returnUnusedItems();
}
