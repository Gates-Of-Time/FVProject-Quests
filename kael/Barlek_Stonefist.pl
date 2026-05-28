sub EVENT_SAY {
  #:: Match if faction is Ally
  if ($faction == 1) {
    if ($text =~ /hail/i) {
      quest::say("Greetings to you. I seek the service of devout knights who have distinguished themselves. Are you a paladin? If not then be gone.");
    }
    elsif ($text =~ /i am a paladin/i) {
      quest::say("A paladin of your order has not made it this far for quite some time. Well, I wonder what it is you seek here. Do you seek heroic and chivalrous deeds to distinguish yourself from your brethren? Do you need accoutrements to aid you in your battles perhaps? You are in luck, knight for I have both for you. Do you wish to partake of my quests?");
    }
    elsif ($text =~ /partake of your quests/i) {
      quest::say("Excellent. By serving my cause, you, in turn, will further your own. I require certain components to aid me and if you bring them to me, I shall reward you for your honorable service. You may choose from among these items, a helm, a breastplate, armplates, bracers, gauntlets, greaves, and boots.");
    }
    elsif ($text =~ /helm/i) {
      quest::say("All that I require is an ancient tarnished plate helmet and three pieces of crushed coral. This should be a small task for one such as you. Go now and I shall await your return.");
    }
    elsif ($text =~ /breastplate/i) {
      quest::say("As the resolve of your faith shall protect you, so shall this breastplate. All that is required is an ancient tarnished breastplate, and three flawless diamonds. Do this quickly so that you may return to your place in the field of battle.");
    }
    elsif ($text =~ /armplate/i) {
      quest::say("So, a pair of armplates, is what you require? Well, I require an ancient tarnished plate vambraces as well as three flawed emeralds before you will receive your prize.");
    }
    elsif ($text =~ /bracer/i) {
      quest::say("Bracers for the mighty? Retrieve these components and I shall forge the item for you. Bring me an ancient tarnished plate bracelet as well as three crushed flame emeralds.");
    }
    elsif ($text =~ /gauntlet/i) {
      quest::say("Mighty gauntlets to smite your foes for the glory of the greater good. It is no easy task but I shall require a pair of an ancient tarnished plate gauntlets and three crushed topaz.");
    }
    elsif ($text =~ /greaves/i) {
      quest::say("Sturdy are the pillars that support the temple. I shall make you as strong with these leggings. Gather three flawed sapphires of the sea and a set of ancient tarnished plate greaves.");
    }
    elsif ($text =~ /boots/i) {
      quest::say("A pair of boots you shall have once you have gotten a pair of an ancient tarnished plate boots and a set of three crushed pieces of black marble.");
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
      #:: Give a 25370 - Shining Helm
      quest::summonitem(25370);
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
      #:: Give a 25371 - Shining Breastplate
      quest::summonitem(25371);
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
      #:: Give a 25372 - Shining Vambraces
      quest::summonitem(25372);
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
    #:: Match a 25838 - Crushed Flame Emerald and a 24904 - Ancient Tarnished Plate Bracelet
    elsif (plugin::takeItems(25838 => 3, 24904 => 1)) {
      #:: Give a 25373 - Shining Bracer
      quest::summonitem(25373);
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
      #:: Give a 25374 - Shining Gauntlets
      quest::summonitem(25374);
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
      #:: Give a 25375 - Shining Greaves
      quest::summonitem(25375);
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
      #:: Give a 25376 - Shining Boots
      quest::summonitem(25376);
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

