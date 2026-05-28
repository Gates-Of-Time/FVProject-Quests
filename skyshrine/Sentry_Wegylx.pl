sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("There is rumor that a young N`Ogard is lost in the maze. Perhaps you should go find the father and see if you can help.");
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");

  #:: Return unused items
  plugin::returnUnusedItems();
}
