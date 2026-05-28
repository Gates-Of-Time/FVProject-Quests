sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Hello, $name. I would be careful around the cubes. Rumor is they've gotten some kind of intelligence now.");
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");
  #:: Return unused items
  plugin::returnUnusedItems();
}