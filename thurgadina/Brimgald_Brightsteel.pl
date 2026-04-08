sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Ye have the look of an aspirin' velium smith about ye, $name. Well, ye won't get very far in the field without purchasin' some o' the finest smithin' molds in Thurgadin. Lucky for you I can help ye in that department, so what'll it be?");
  }
}

sub EVENT_ITEM {
  quest::say("I have no need for this, $name.");

  #:: Return unused items.
  plugin::returnUnusedItems();
}