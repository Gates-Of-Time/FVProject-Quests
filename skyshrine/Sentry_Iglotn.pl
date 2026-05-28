sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Move along.");
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");

  #:: Return unused items
  plugin::returnUnusedItems();
}
