sub EVENT_ITEM {
  #:: Match four 30264 - Yakman Parts.
  if (plugin::takeItems(30264 => 4)) {
    #:: Grant a tiny amount of experience.
    quest::exp(100);
    #:: Spawn a Great Divide >> bloody_gnome_captive (118026), without grid or guild war, at the given location.
    quest::spawn2(118026, 0, 0, 3172, -5931, -107.2, 80.5);
    #:: Depop with spawn timer active
    quest::depop_withtimer();
  }

  #:: Return unused items.
  plugin::returnUnusedItems();
}
