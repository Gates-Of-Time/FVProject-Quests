sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("Hello, strange one. I am Bloogy Shellcracker, the preparer of meals for my people. I am not familiar with the culinary tastes of your kind but you are welcome to purchase some of my supplies. I will also barter for ingredients to some of my exotic dishes.");
  }

  elsif ($text =~ /ingredients/i) {
    quest::say("The rarest treat I can prepare for my people is saucy salted seadragon steak. I wish to barter for some water dragon or sea dragon meat, saltwater seaweed, and fish eggs. The rest of the ingredients are collected locally by our collectors.");
  }
}

sub EVENT_ITEM {
  my $handin_success = 0;

  #:: Match a 22812 - Water Dragon Meat, a 19113 - Saltwater Seaweed, and two 16498 - Fish Eggs
  if (plugin::takeItems(22812 => 1, 19113 => 1, 16498 => 2)) {
    quest::say("It has been many moons since my people have feasted on this rarest of meat. Take this totem crafted in the form of our oceanlord Prexus and inscribed with the runes of our people. May the oceans watch over you, $name.");
    #:: Give a 28514 - Othmir Prexus Totem
    quest::summonitem(28514);
    #:: Grant a medium amount of experience
    quest::exp(15000);
    #:: Set factions
    quest::faction(432, 30);  #:: + Othmir
    quest::faction(431, -60); #:: - Ulthork
    $handin_success = 1;
  }

  #:: Match a 22813 - Sea Dragon Meat, a 19113 - Saltwater Seaweed, and two 16498 - Fish Eggs
  elsif (plugin::takeItems(22813 => 1, 19113 => 1, 16498 => 2)) {
    quest::say("It has been many moons since my people have feasted on this rarest of meat. Take this totem crafted in the form of our oceanlord Prexus and inscribed with the runes of our people. May the oceans watch over you, $name.");
    #:: Give a 28514 - Othmir Prexus Totem
    quest::summonitem(28514);
    #:: Grant a medium amount of experience
    quest::exp(15000);
    #:: Set factions
    quest::faction(432, 30);  #:: + Othmir
    quest::faction(431, -60); #:: - Ulthork
    $handin_success = 1;
  }

  if (!$handin_success) {
    quest::say("I do not want this.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}