sub EVENT_SAY {
  if ($text =~ /cutlass fish oil/i) {
    quest::say("Grab a pole and fish the waters in Iceclad until you catch yourself three Iceclad Cutlass fish. Place them in this oil extractor and you'll have whatcha need.");
    #:: Give a 17514 - Fish oil extractor.
    quest::summonitem(17514);
  }
  elsif ($text =~ /liquid velium/i) {
    quest::say("Collect a small piece of velium and a bottle of rubbing alcohol and brew them together in a barrel. It aint easy, but it should prove to be a minor task for the likes of you.");
  }
}

sub EVENT_ITEM {
  #:: Match a 1856 - Etched Rune.
  if (plugin::takeItems(1856 => 1)) {
    quest::say("That looks about right. You're moving along well outlander. Next you'll be needin to brew up a sacred ink to fill the grooves in your rune. Take Iceclad Cutlass fish oil, liquid velium, and some Royal Kromrif blood, brew them in the barrel here then take the product and the rune and combine them in a fletching kit. Show Talem Tucker the resulting item if yer successful.");
    #:: Give a 1856 - Etched Rune.
    quest::summonitem(1856);
  }

  #:: Return unused items.
  plugin::returnUnusedItems();
}

