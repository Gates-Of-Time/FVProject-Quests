sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Uuuhh, this be a private room, me friend. Mayhap ye should leave before somethin' unfortunate happens.");
  }
}

sub EVENT_ITEM {
  #:: Default response for unsupported hand-ins
  quest::say("I have no need for this, $name.");
  #:: Return unused items
  plugin::returnUnusedItems();
}