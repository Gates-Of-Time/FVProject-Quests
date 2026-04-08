sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("You got a dispute to settle or are ya here to yap it up?");
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");
  #:: Return unused items.
  plugin::returnUnusedItems();
}