sub EVENT_ITEM {
  #:: Match a 1415 - Leif's Napkin and a 1425 - Tundrabear Sandwich.
  if (plugin::takeItems(1415 => 1, 1425 => 1)) {
    quest::say("Well I'll be derned. An outlander that can make a good Bearmeat 'n Bread! Thank ye, $name.");
    #:: Give a 1419 - Used Napkin.
    quest::summonitem(1419);
    #:: Grant a medium amount of experience.
    quest::exp(50000);
    #:: Set factions
    quest::faction(406,10);  #:: + Coldain
    quest::faction(405,10);  #:: + Dain Frostreaver IV
    quest::faction(419,-30); #:: - Kromrif
    quest::faction(448,-30); #:: - Kromzek
  }
  #:: Match a 1425 - Tundrabear Sandwich.
  elsif (plugin::takeItems(1425 => 1)) {
    quest::say("Well I'll be derned. An outlander that can make a good Bearmeat 'n Bread! Thank ye, $name.");
    #:: Grant a small amount of experience.
    quest::exp(5000);
    #:: Set factions
    quest::faction(406,10);  #:: + Coldain
    quest::faction(405,10);  #:: + Dain Frostreaver IV
    quest::faction(419,-30); #:: - Kromrif
    quest::faction(448,-30); #:: - Kromzek
  }

  #:: Return unused items.
  plugin::returnUnusedItems();
}

