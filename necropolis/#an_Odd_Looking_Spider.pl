sub EVENT_ITEM {
  #:: Match a 67053 - Note to Stiggle
  if (plugin::takeItems(67053 => 1)) {
    #:: Spawn a Dragon Necropolis >> #Stiggles_Cogswin (123150), without grid or guild war, at the current location
    quest::spawn2(123150, 0, 0, $x, $y, $z, $h);
    #:: Depop with spawn timer active
    quest::depop_withtimer();
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}