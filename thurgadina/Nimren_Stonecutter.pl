sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("The finest ore fresh from the mines I have! Take a look, why don't ye, $name. I'm sure I've got somethin' ye be needin'.");
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");
  #:: Return unused items.
  plugin::returnUnusedItems();
}