sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::emote("nods respectfully.");
    quest::say("Welcome to Siren Bay strange one. These beaches belong to my people, the Othmir. You are welcome in our villages as long as you do not cause trouble and are willing to either assist the shellfish collectors provide nourishment or aid the warriors defending the beaches.");
  }

  elsif ($text =~ /aid the warriors/i) {
    quest::say("There are many creatures that would prey on my people if it were not for the dedication of our warriors. The Bulthar and Ulthork often invade our territory and prey on our shellfish collectors. They are wasteful creatures and take more than they could possibly eat from the sacred seas.");
  }

  elsif ($text =~ /bulthar/i) {
    quest::say("The Bulthar are sea elephant people. They are strong brutes with the intelligence of a clam. There is no reasoning with the savages since they seem to only understand their territorial instincts. There is a small herd of them that has taken up residence on the rocky beach beneath the lonely tower and have already injured many of our shellfish collectors. I will reward you for the trunks of every two brutes that you slay.");
  }

  elsif ($text =~ /ulthork/i) {
    quest::say("The Ulthork are walrus people. They are just as territorial and brutish as the Bulthar but are slightly more intelligent. They seem to be jealous of my people's prosperity and occasionally lead raiding parties onto our beaches. Our craftsman use the tusks of the slain Ulthork to carve ivory totems of praise to the ocean lord. I will gladly barter for no less than four pairs of Ulthork tusks.");
  }
}

sub EVENT_ITEM {
  #:: Match four 24874 - Ulthork Tusks
  if (plugin::takeItems(24874 => 4)) {
    quest::say("Many thanks to you, strange one. Our craftsman will be pleased. They have been in need of a new bundle of ivory.");
    #:: Give a random reward: 10036 - Black Sapphire, 22503 - Blue Diamond, 16976 - Crystallized Sulfur, 10037 - Blue Sapphire, 10033 - Diamond, 10049 - Fire Emerald Ring, 10031 - Fire Opal, 10053 - Jacinth, 10035 - Ruby, 10051 - Ruby Crown, 10034 - Sapphire, 10050 - Sapphire Necklace, 10032 - Star Ruby, 10048 - Star Ruby Earring
	my $itemid = quest::ChooseRandom(10036, 22503, 16976, 10037, 10033, 10049, 10031, 10053, 10035, 10051, 10034, 10050, 10032, 10048);
    quest::summonitem($itemid);
    #:: Set factions
    quest::faction(432, 30);  #:: + Othmir
    quest::faction(431, -60); #:: - Ulthork
  }
  #:: Match a 30068 - Bulthar Trunk
  elsif (plugin::takeItems(30068 => 1)) {
    quest::say("Such wasteful creatures the Bulthar are. It is a shame they are not intelligent enough to realize the harm they do to the very oceans that sustain them.");
    #:: Give a 22817 - Runed Othmir Spear
    quest::summonitem(22817);
  	#:: Set factions
    quest::faction(432, 30);  #:: + Othmir
    quest::faction(431, -60); #:: - Ulthork
    #:: Give a 22817 - Runed Othmir Spear
    quest::summonitem(22817);
  }
  #:: Match two 30067 - Bulthar Trunk
  elsif (plugin::takeItems(30067 => 2)) {
    quest::say("Such wasteful creatures the Bulthar are. It is a shame they are not intelligent enough to realize the harm they do to the very oceans that sustain them.");
    #:: Give a random reward: 10036 - Black Sapphire, 22503 - Blue Diamond, 16976 - Crystallized Sulfur, 10037 - Blue Sapphire, 10033 - Diamond, 10049 - Fire Emerald Ring, 10031 - Fire Opal, 10053 - Jacinth, 10035 - Ruby, 10051 - Ruby Crown, 10034 - Sapphire, 10050 - Sapphire Necklace, 10032 - Star Ruby, 10048 - Star Ruby Earring
	my $itemid = quest::ChooseRandom(10036, 22503, 16976, 10037, 10033, 10049, 10031, 10053, 10035, 10051, 10034, 10050, 10032, 10048);
    quest::summonitem($itemid);
    #:: Set factions
    quest::faction(432, 30);  #:: + Othmir
    quest::faction(431, -60); #:: - Ulthork
  }
  else {
    quest::say("I have no need of these, strange one.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}