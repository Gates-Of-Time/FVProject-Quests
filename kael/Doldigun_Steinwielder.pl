sub EVENT_AGGRO {
  quest::emote("calls for help and scurries off.");
  #:: Spawn a Kael Drakkel >> #Grondon_Zekkin (113554), without grid or guild war, at the given location
  quest::spawn2(113554, 28, 0, 1130.3, -933.2, -125.6, 126.6);
  #:: Spawn a Kael Drakkel >> #Kromzog_Zekkin (113555), without grid or guild war, at the given location
  quest::spawn2(113555, 29, 0, 1130.3, -749.6, -125.6, 126.6);
  #:: Depop with spawn timer active
  quest::depop_withtimer();
}

sub EVENT_ITEM {
  #:: Match a 18172 - Letter to Doldigun
  if (plugin::takeItems(18172 => 1)) {
    quest::emote("calls for help and scurries off.");
    #:: Spawn a Kael Drakkel >> Grondon_Zekkin (113443), without grid or guild war, at the given location
    quest::spawn2(113443, 28, 0, 1130.3, -933.2, -125.6, 126.6);
    #:: Spawn a Kael Drakkel >> Kromzog_Zekkin (113548), without grid or guild war, at the given location
    quest::spawn2(113548, 29, 0, 1130.3, -749.6, -125.6, 126.6);
    #:: Depop with spawn timer active
    quest::depop_withtimer();
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}