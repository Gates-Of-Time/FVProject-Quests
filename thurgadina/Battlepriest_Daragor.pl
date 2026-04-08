sub EVENT_SAY {
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    if ($text =~ /hail/i) {
      quest::say("Greetings to you. I seek the service of devout knights who have distinguished themselves. Are you a paladin, $name?");
    }
    elsif ($text =~ /i am a paladin/i) {
      quest::say("A paladin of your kind has not made it this far for quite some time. Well, I wonder what it is you seek here? Do you seek heroic and chivalrous deeds to distinguish yourself from your brethren? Do you need accoutrements to aid you in your battles perhaps? You are in luck, knight, for I have both for you. Do you wish to partake of my quests?");
    }
    elsif ($text =~ /partake of your quests/i) {
      quest::say("Excellent! By serving my cause, you, in turn, will further your own. I require certain components and if you bring them to me I shall reward you for your honorable service. You may choose from among these items: a helm, a breastplate, armplates, bracers, gauntlets, greaves, and boots.");
    }
    elsif ($text =~ /helm/i) {
      quest::say("To create a piece of armor to protect your skull I will require three pieces of crushed coral as well as a corroded plate helmet.");
    }
    elsif ($text =~ /breastplate/i) {
      quest::say("For the breastplate, I will need a corroded breastplate and three flawless diamonds. Once I have them in my possession it will not take long to craft a sturdy breastplate.");
    }
    elsif ($text =~ /armplate/i) {
      quest::say("Protection for your arms will come at the price of a set of corroded plate vambraces and three flawed emeralds.");
    }
    elsif ($text =~ /bracer/i) {
      quest::say("For the bracers, I will require a corroded plate bracer and a set of three crushed flame emeralds. Return to me if you happen to find these things in your travels.");
    }
    elsif ($text =~ /gauntlet/i) {
      quest::say("Protecting your hands is very important. I can forge protection for your hands if you bring me a pair of corroded plate gauntlets and three crushed topaz.");
    }
    elsif ($text =~ /greaves/i) {
      quest::say("A set of corroded greaves might be salvageable if you were to find three flawed sea sapphires. With the right techniques almost anything is possible.");
    }
    elsif ($text =~ /boots/i) {
      quest::say("Boots made for battle are not always the most comfortable available. However, if you seek a fine set for battle bring me a set of corroded plate boots and three pieces of crushed black marble.");
    }
  }
  else {
    quest::say("I do not know you well enough to entrust you with such a quest, yet.");
  }
}

sub EVENT_ITEM {
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    #:: Match three 25831 - Crushed Coral and a 24933 - Corroded Plate Helmet.
    if (plugin::takeItems(25831 => 3, 24933 => 1)) {
      #:: Give a 31021 - Runed Protector's Helm.
      quest::summonitem(31021);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406, 20);   #:: + Coldain
      quest::faction(405, 20);   #:: + Dain Frostreaver IV
      quest::faction(419, -60);  #:: - Kromrif
      quest::faction(448, -60);  #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25814 - Flawless Diamond and a 24928 - Corroded Breastplate.
    elsif (plugin::takeItems(25814 => 3, 24928 => 1)) {
      #:: Give a 31022 - Runed Protector's Breastplate.
      quest::summonitem(31022);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406, 20);   #:: + Coldain
      quest::faction(405, 20);   #:: + Dain Frostreaver IV
      quest::faction(419, -60);  #:: - Kromrif
      quest::faction(448, -60);  #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25821 - Flawed Emerald and a 24930 - Corroded Plate Vambraces.
    elsif (plugin::takeItems(25821 => 3, 24930 => 1)) {
      #:: Give a 31023 - Runed Protector's Vambraces.
      quest::summonitem(31023);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406, 20);   #:: + Coldain
      quest::faction(405, 20);   #:: + Dain Frostreaver IV
      quest::faction(419, -60);  #:: - Kromrif
      quest::faction(448, -60);  #:: - Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25838 - Crushed Flame Emerald and a 24932 - Corroded Plate Bracer.
    elsif (plugin::takeItems(25838 => 3, 24932 => 1)) {
      #:: Give a 31024 - Runed Protector's Bracer.
      quest::summonitem(31024);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406, 20);   #:: + Coldain
      quest::faction(405, 20);   #:: + Dain Frostreaver IV
      quest::faction(419, -60);  #:: - Kromrif
      quest::faction(448, -60);  #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25832 - Crushed Topaz and a 24934 - Corroded Plate Gauntlets.
    elsif (plugin::takeItems(25832 => 3, 24934 => 1)) {
      #:: Give a 31025 - Runed Protector's Gauntlets.
      quest::summonitem(31025);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406, 20);   #:: + Coldain
      quest::faction(405, 20);   #:: + Dain Frostreaver IV
      quest::faction(419, -60);  #:: - Kromrif
      quest::faction(448, -60);  #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25825 - Flawed Sea Sapphire and a 24929 - Corroded Plate Greaves.
    elsif (plugin::takeItems(25825 => 3, 24929 => 1)) {
      #:: Give a 31026 - Runed Protector's Greaves.
      quest::summonitem(31026);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406, 20);   #:: + Coldain
      quest::faction(405, 20);   #:: + Dain Frostreaver IV
      quest::faction(419, -60);  #:: - Kromrif
      quest::faction(448, -60);  #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25833 - Crushed Black Marble and a 24931 - Corroded Plate Boots.
    elsif (plugin::takeItems(25833 => 3, 24931 => 1)) {
      #:: Give a 31027 - Runed Protector's Boots.
      quest::summonitem(31027);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406, 20);   #:: + Coldain
      quest::faction(405, 20);   #:: + Dain Frostreaver IV
      quest::faction(419, -60);  #:: - Kromrif
      quest::faction(448, -60);  #:: - Kromzek
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

  #:: Return unused items.
  plugin::returnUnusedItems();
}

