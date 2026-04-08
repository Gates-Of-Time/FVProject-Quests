sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Oh hello there! I'm sorta new here so I ask ye to be patient with me heheh. What kin I get fer ya, $name?");
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");

  #:: Return unused items.
  plugin::returnUnusedItems();
}