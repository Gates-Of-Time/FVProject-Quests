sub EVENT_SAY {
  #:: Match if faction is Ally
  if ($faction == 1) {
    if ($text =~ /hail/i) {
      quest::say("Hail! I long to speak with a minstrel. I am curious about what has gone on beyond our borders here. Are you a bard? If not then I have no use for you.");
    }
    elsif ($text =~ /i am a bard/i) {
      quest::say("So troubadour, what news and stories have you from the New World? Oh, I forget my manners. We shall exchange talk another time. You seek something do you not? A new outfit perhaps?");
    }
    elsif ($text =~ /i seek a new outfit/i) {
      quest::say("Well then, I have just what you need. Now, my terms of
payment is thus, you gather some things for me and in return I shall craft you the finest armor a bard has ever seen! A new outfit comprised of a helm, breastplate, armplates, bracers, gauntlets, greaves, and boots shall make you the envy of your peers, my little friend.");
    }
    elsif ($text =~ /helm/i) {
      quest::say("A brand new shiny helm shall be yours once I have an ancient tarnished plate helmet and three pieces of crushed coral. May the audience swoon in your presence.");
    }
    elsif ($text =~ /breastplate/i) {
      quest::say("I have need of an ancient tarnished breastplate and three
flawless diamonds. Find these for me and I shall craft you a breastplate, minstrel. May it protect you from unruly audiences with rotten vegetables.");
    }
    elsif ($text =~ /armplate/i) {
      quest::say("A gorgeous pair of armplates shall be yours once you have
retrieved a pair of ancient tarnished plate vambraces and three flawed emeralds. The detail and craftsmanship is stunning!");
    }
    elsif ($text =~ /bracer/i) {
      quest::say("A pair of bracers shall be yours upon receipt of an ancient
tarnished plate bracer and three crushed flame emeralds. May your songs never
falter during a tactical retreat.");
    }
    elsif ($text =~ /gauntlet/i) {
      quest::say("It would be a shame if your hands were to be injured and not be able to play your instruments wouldn't it? I shall craft some gauntlets so that your nimble digits remain intact. Bring me a pair of ancient tarnished plate gauntlets as well as three crushed topaz.");
    }
    elsif ($text =~ /greaves/i) {
      quest::say("Some new greaves would do you some good. The pair you have now looks quite stained and worn. Nevermind, fetch me a pair of ancient tarnished plate greaves and three flawed sea sapphires.");
    }
    elsif ($text =~ /boots/i) {
      quest::say("A fancy pair of boots you want is it? Yes, I can see the pair you have now looks a bit worn from running so much. All I require is a set of three crushed pieces of black marble and a pair of ancient tarnished plate boots.");
    }
  }
  else {
    quest::say("You must prove your dedication to Kael Drakkal and the Kromzek clan before I will speak to you.");
  }
}

sub EVENT_ITEM {
  #:: Match if faction is Ally
  if ($faction == 1) {
    #:: Match a 25831 - Crushed Coral and a 24905 - Ancient Tarnished Plate Helmet
    if (plugin::takeItems(25831 => 3, 24905 => 1)) {
      #:: Give a 25384 - Troubadour's Helm
      quest::summonitem(25384);
      #:: Grant a large amount of experience
      quest::exp(150000);
      #:: Set factions
      quest::faction(429, 20);  #:: + King Tormax
      quest::faction(448, 20);  #:: + Kromzek
      quest::faction(430, -20); #:: - Claws of Veeshan
      quest::faction(406, -60); #:: - Coldain
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match a 25814 - Flawless Diamond and a 24900 - Ancient Tarnished Breastplate
    elsif (plugin::takeItems(25814 => 3, 24900 => 1)) {
      #:: Give a 25385 - Troubadour's Breastplate
      quest::summonitem(25385);
      #:: Grant a large amount of experience
      quest::exp(150000);
      #:: Set factions
      quest::faction(429, 20);  #:: + King Tormax
      quest::faction(448, 20);  #:: + Kromzek
      quest::faction(430, -20); #:: - Claws of Veeshan
      quest::faction(406, -60); #:: - Coldain
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match a 25821 - Flawed Emerald and a 24902 - Ancient Tarnished Vambraces
    elsif (plugin::takeItems(25821 => 3, 24902 => 1)) {
      #:: Give a 25386 - Troubadour's Vambraces
      quest::summonitem(25386);
      #:: Grant a large amount of experience
      quest::exp(150000);
      #:: Set factions
      quest::faction(429, 20);  #:: + King Tormax
      quest::faction(448, 20);  #:: + Kromzek
      quest::faction(430, -20); #:: - Claws of Veeshan
      quest::faction(406, -60); #:: - Coldain
      quest::emote("smiles warmly as she hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match a 25838 - Crushed Flame Emerald and a 24904 - Ancient Tarnished Plate Bracelet
    elsif (plugin::takeItems(25838 => 3, 24904 => 1)) {
      #:: Give a 25387 - Troubadour's Bracer
      quest::summonitem(25387);
      #:: Grant a large amount of experience
      quest::exp(150000);
      #:: Set factions
      quest::faction(429, 20);  #:: + King Tormax
      quest::faction(448, 20);  #:: + Kromzek
      quest::faction(430, -20); #:: - Claws of Veeshan
      quest::faction(406, -60); #:: - Coldain
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match a 25832 - Crushed Topaz and a 24906 - Ancient Tarnished Plate Gauntlets
    elsif (plugin::takeItems(25832 => 3, 24906 => 1)) {
      #:: Give a 25388 - Troubadour's Gauntlets
      quest::summonitem(25388);
      #:: Grant a large amount of experience
      quest::exp(150000);
      #:: Set factions
      quest::faction(429, 20);  #:: + King Tormax
      quest::faction(448, 20);  #:: + Kromzek
      quest::faction(430, -20); #:: - Claws of Veeshan
      quest::faction(406, -60); #:: - Coldain
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match a 25825 - Flawed Sea Sapphire and a 24901 - Ancient Tarnished Greaves
    elsif (plugin::takeItems(25825 => 3, 24901 => 1)) {
      #:: Give a 25389 - Troubadour's Greaves
      quest::summonitem(25389);
      #:: Grant a large amount of experience
      quest::exp(150000);
      #:: Set factions
      quest::faction(429, 20);  #:: + King Tormax
      quest::faction(448, 20);  #:: + Kromzek
      quest::faction(430, -20); #:: - Claws of Veeshan
      quest::faction(406, -60); #:: - Coldain
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match a 25833 - Crushed Black Marble and a 24903 - Ancient Tarnished Plate Boots
    elsif (plugin::takeItems(25833 => 3, 24903 => 1)) {
      #:: Give a 25390 - Troubadour's Boots
      quest::summonitem(25390);
      #:: Grant a large amount of experience
      quest::exp(150000);
      #:: Set factions
      quest::faction(429, 20);  #:: + King Tormax
      quest::faction(448, 20);  #:: + Kromzek
      quest::faction(430, -20); #:: - Claws of Veeshan
      quest::faction(406, -60); #:: - Coldain
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    else {
      quest::say("These are not the pieces I need.");
    }
  }
  else {
    quest::say("I do not know you well enough to entrust you with such an item, yet.");
  }

  #:: Return unused items
  plugin::returnUnusedItems();
}

