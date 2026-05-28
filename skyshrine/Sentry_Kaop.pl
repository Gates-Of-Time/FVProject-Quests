sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("I've seen your kind dashing about. Just watch your footing, you never know when you might slip and fall.");
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");

  #:: Return unused items
  plugin::returnUnusedItems();
}
