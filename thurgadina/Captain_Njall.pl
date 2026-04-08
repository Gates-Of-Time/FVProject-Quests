sub EVENT_SAY {
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    if ($text =~ /hail/i) {
      quest::say("Well met, $race! I am Captain Njall, commander of the city gaurds here in Thurgadin. If ye seek ta join our ranks, I welcome ye with open arms and have an offer to make if you are interested. If ye seek to be our enemy, I hope ye can run swifter than my archers arrows.");
    }
    elsif ($text =~ /i am interested/i) {
      quest::say("Aye, I thought ye might be. My elite warriors are in sore need of some enchanted armor. Unfortunately, I can't spare the men to go out and fetch me the components. If you can do this for me, I'll gladly reward you with a piece of it. I need materials for a helm, a breastplate, armplates, bracers, gauntlets, greaves, and boots.");
    }
    elsif ($text =~ /helm/i) {
      quest::say("To create a piece of armor to protect your skull I will require three pieces of crushed coral as well as a corroded plate helmet.");
    }
    elsif ($text =~ /breastplate/i) {
      quest::say("For the breastplate, I will need a corroded breastplate and three flawless diamonds. Once I have them in my possession it will not take long to craft a sturdy breastplate.");
    }
    elsif ($text =~ /armplates/i) {
      quest::say("Protection for your arms will come at the price of a set of corroded plate vambraces and three flawed emeralds.");
    }
    elsif ($text =~ /bracers/i) {
      quest::say("For the bracers, I will require a corroded plate bracer and a set of three crushed flame emeralds. Return to me if you happen to find these things in your travels.");
    }
    elsif ($text =~ /gauntlets/i) {
      quest::say("Protecting your hands is very important. I can forge protection for your hands if you bring me a pair of corroded plate gauntlets and three crushed topaz.");
    }
    elsif ($text =~ /greaves/i) {
      quest::say("A set of corroded greaves might be salvageable if you were to find three flawed sea sapphires. With the right techniques almost anything is possible.");
    }
    elsif ($text =~ /boots/i) {
      quest::say("Boots made for battle are not always the most comfortable available. However if you seek a fine set for battle bring me a set of corroded plate boots and three pieces of crushed black marble.");
    }
  }
  else {
    quest::say("I do not know you well enough to entrust you with such a quest, yet.");
  }
}

sub EVENT_ITEM {
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    #:: Match three 25814 - Flawless Diamond and a 24928 - Corroded Breastplate.
    if (plugin::takeItems(25814 => 3, 24928 => 1)) {
      #:: Give a 31085 - Champion's Breastplate.
      quest::summonitem(31085);
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
      #:: Give a 31086 - Champion's Vambraces.
      quest::summonitem(31086);
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
      #:: Give a 31089 - Champion's Greaves.
      quest::summonitem(31089);
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
      #:: Give a 31088 - Champion's Gauntlets.
      quest::summonitem(31088);
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
    #:: Match three 25831 - Crushed Coral and a 24933 - Corroded Plate Helmet.
    elsif (plugin::takeItems(25831 => 3, 24933 => 1)) {
      #:: Give a 31084 - Champion's Crown.
      quest::summonitem(31084);
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
    #:: Match three 25838 - Crushed Flame Emerald and a 24932 - Corroded Plate Bracer.
    elsif (plugin::takeItems(25838 => 3, 24932 => 1)) {
      #:: Give a 31087 - Champion's Bracer.
      quest::summonitem(31087);
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
      #:: Give a 31090 - Champion's Boots.
      quest::summonitem(31090);
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

