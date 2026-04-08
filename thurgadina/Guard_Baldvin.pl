sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Beyond these gates is the city of our people. Be respectful and obey our laws else I'll toss yer carcass into the pit meself.");
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");

  #:: Return unused items.
  plugin::returnUnusedItems();
}