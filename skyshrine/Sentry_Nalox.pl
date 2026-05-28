sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("I have no time to talk right now. I must keep watch for hostiles.");
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");

  #:: Return unused items
  plugin::returnUnusedItems();
}
