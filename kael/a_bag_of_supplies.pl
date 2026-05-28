sub EVENT_ITEM {
  #:: Hand in a 24860 - Bag of Crushed Herbs and a 24861 - Bag of Sulfur
  if (plugin::takeItems(24860 => 1, 24861 => 1)) {
    #:: Give a 22855 - Pile of Rubble
    quest::summonitem(22855);
    #:: Cast Pillar of Flame (1644) on self
    quest::selfcast(1644);
    #:: Depop with timer
    quest::depop_withtimer();
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}

