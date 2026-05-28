sub EVENT_ITEM {
  #:: Match a 25279 - Voucher for Toolset
  if (plugin::takeItems(25279 => 1)) {
    quest::say("Here you go $name. I dunno why master Wenglawks trusts you with this but take it anyways and don't mess up.");
    quest::emote("smacks his fists together as he looks at you.");
    #:: Give a 25104 - Coldain Toolset
    quest::summonitem(25104);
  }
  #:: Match a 25280 - Voucher for Spear
  elsif (plugin::takeItems(25280 => 1)) {
    quest::say("Another delivery eh? Be careful with this spear, if you break it I'll break you.");
    #:: Give a 25106 - Bekerak's New Spear
    quest::summonitem(25106);
  }
  #:: Match a 25281 - Voucher for Mechanical Net
  elsif (plugin::takeItems(25281 => 1)) {
    quest::say("It's hard to belive a $race like you is going to make a trip like this. I don't envy you little fool.");
    #:: Give a 25107 - Mechanical Net
    quest::summonitem(25107);
  }
  #:: Match a 1722 - Helssen's Voucher
  elsif (plugin::takeItems(1722 => 1)) {
    quest::say("I still cannot believe we are giving such a prized possesion as the Collar of the Storm to a mere mercenary. You better pray you don't bring shame upon the smith who created and enchanted this item. Oh and here is your seal as Helssen has ordered me to give you. It is proof of your service to us.");
    #:: Ding!
    quest::ding();
    #:: Give a 1721 - Collar of the Storm
    quest::summonitem(1721);
    #:: Give a 1723 - Noble's Seal
    quest::summonitem(1723);
    #:: Grant a small amount of experience
    quest::exp(2000);
  }
  else {
    quest::say("I have no need for this item $name, you can have it back.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}
