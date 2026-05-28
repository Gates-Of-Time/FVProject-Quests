sub EVENT_SAY {
  if ($text =~ /hail/i) {
    quest::say("You have entered the sacred temple of Tallon Zek. This is the Temple of Tactics, where we teach what must be done to achieve goals in the most efficient manner.");
  }
  elsif ($text =~ /teach me/i) {
    quest::say("I cannot teach one of your kind the arts of war. I must teach the other Kromzek at this time. If you were to serve the Temple of Tactics I might consider giving you a few words of wisdom.");
  }
  elsif ($text =~ /serve the temple/i) {
    quest::say("The great father of war, Rallos Zek, wishes the destruction of the inferior race known as the Coldain. As the high priest of Tallon Zek, I see that they use great tactics to evade destruction. Find the ones who teach these tactics to the other Coldain and bring back the books that contain the ancient
Coldain tactics and strategies. Do not waste my time without a scroll or book that those tiny beasts hold");
  }
}

sub EVENT_ITEM {
  #:: Match a 24987 - Brell's Divine Strategy or a 24988 - War Tactics of the Frostreavers
  if (plugin::takeItems(24987 => 1) || plugin::takeItems(24988 => 1)) {
    quest::say("You are a brave little beast to gain this tome. Let me impart a bit of wisdom to you. Tactics must change - if you do not ever adapt to new surroundings, environments and rules, you will surely perish.");
    #:: Give a random reward item: 25037 - Circlet of Tallon, 25038 - Book of Tactics, 25039 - Gauntlets of Iron Tactics, or 25042 - Bracelet of Sacrifice
    quest::summonitem(quest::ChooseRandom(25037, 25038, 25039, 25042));
    #:: Grant a medium amount of experience
    quest::exp(50000);
    #:: Set factions
    quest::faction(419, 30);  #:: + Kromrif
    quest::faction(448, 30);  #:: + Kromzek
    quest::faction(429, 30);  #:: + King Tormax
    quest::faction(430, -90); #:: - Claws of Veeshan
  }
  else {
    quest::say("I have no use for this, $name.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}

