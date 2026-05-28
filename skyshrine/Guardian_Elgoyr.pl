sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("We were created to protect the Kin and the shrine from attack. This is what we've always done. Do not try to alter this.");
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");

  #:: Return unused items
  plugin::returnUnusedItems();
}
