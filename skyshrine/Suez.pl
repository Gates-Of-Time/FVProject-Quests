sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Yes? Can't you see we are busy here.");
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");
  #:: Return unused items
  plugin::returnUnusedItems();
}