sub EVENT_ITEM {
  #:: Match a 1198 - Embroidered Coldain Prayer Shawl.
  if (plugin::takeItems(1198 => 1)) {
    quest::say("So, you've been chosen to attempt the rune, eh? Been ages since anyone's even made an attempt. The rune represents the very essence of our people, our culture, and our religion. Take a sea shell runed with enduring breath and a small brick of velium and grind them together in a mortar and pestle. Add water to the powder and model the rune. Fire the rune with water and the best of firing sheets. Show the product to Trademaster Kroven.");
    #:: Give a 1198 - Embroidered Coldain Prayer Shawl.
    quest::summonitem(1198);
  }

  #:: Return unused items.
  plugin::returnUnusedItems();
}

