sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Watch out in the water. Yelinak keeps a few small fish there.");
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");
  #:: Return unused items
  plugin::returnUnusedItems();
}