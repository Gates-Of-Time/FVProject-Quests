sub EVENT_SAY {
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    if ($text =~ /hail/i) {
      quest::say("Well met, $race! I am Glatigi. If ye seek ta join our ranks, I welcome ye with open arms and have an offer to make if you are interested. If ye seek to be our enemy, I hope ye can run swifter than my archers arrows.");
    }
    elsif ($text =~ /i am interested/i) {
      quest::say("Aye, I thought ye might be. My elite Berserkers are in sore need of some enchanted armor. Unfortunately, I can't spare the men to go out and fetch me the components. If you can do this for me, I'll gladly reward you with a piece of it. I need materials for a coif, a tunic, sleeves, bracers, gauntlets, leggings, and boots.");
    }
    elsif ($text =~ /coif/i) {
      quest::say("To create a piece of armor to protect your skull I will require three pieces of crushed coral as well as a corroded chain coif.");
    }
    elsif ($text =~ /tunic/i) {
      quest::say("For the breastplate, I will need a corroded chain tunic and three flawless diamonds. Once I have them in my possession it will not take long to craft a sturdy tunic.");
    }
    elsif ($text =~ /sleeves/i) {
      quest::say("Protection for your arms will come at the price of a set of corroded chain sleeves and three flawed emeralds.");
    }
    elsif ($text =~ /bracers/i) {
      quest::say("For the bracers, I will require a corroded chain bracer and a set of three crushed flame emeralds. Return to me if you happen to find these things in your travels.");
    }
    elsif ($text =~ /gauntlets/i) {
      quest::say("Protecting your hands is very important. I can forge protection for your hands if you bring me a pair of corroded chain gauntlets and three crushed topaz.");
    }
    elsif ($text =~ /leggings/i) {
      quest::say("A set of corroded leggings might be salvageable if you were to find three flawed sea sapphires. With the right techniques almost anything is possible.");
    }
    elsif ($text =~ /boots/i) {
      quest::say("Boots made for battle are not always the most comfortable available. However if you seek a fine set for battle bring me a set of corroded chain boots and three pieces of crushed black marble.");
    }
  }
  else {
    quest::say("I do not know you well enough to entrust you with such a quest, yet.");
  }
}

sub EVENT_ITEM {
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    #:: Match three 25814 - Flawless Diamond and a 24935 - Corroded Chain Tunic.
    if (plugin::takeItems(25814 => 3, 24935 => 1)) {
      #:: Give a 55318 - Icefury Tunic.
      quest::summonitem(55318);
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
    #:: Match three 25821 - Flawed Emerald and a 24937 - Corroded Chain Sleeves.
    elsif (plugin::takeItems(25821 => 3, 24937 => 1)) {
      #:: Give a 55319 - Icefury Sleeves.
      quest::summonitem(55319);
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
    #:: Match three 25825 - Flawed Ruby and a 24936 - Corroded Chain Leggings.
    elsif (plugin::takeItems(25825 => 3, 24936 => 1)) {
      #:: Give a 55322 - Icefury Greaves.
      quest::summonitem(55322);
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
    #:: Match three 25832 - Flawed Sapphire and a 24941 - Corroded Chain Gauntlets.
    elsif (plugin::takeItems(25832 => 3, 24941 => 1)) {
      #:: Give a 55321 - Icefury Gauntlets.
      quest::summonitem(55321);
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
    #:: Match three 25831 - Flawed Topaz and a 24940 - Corroded Chain Coif.
    elsif (plugin::takeItems(25831 => 3, 24940 => 1)) {
      #:: Give a 55317 - Icefury Coif.
      quest::summonitem(55317);
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
    #:: Match three 25838 - Flawed Amethyst and a 24939 - Corroded Chain Bracer.
    elsif (plugin::takeItems(25838 => 3, 24939 => 1)) {
      #:: Give a 55320 - Icefury Bracer.
      quest::summonitem(55320);
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
    #:: Match three 25833 - Flawed Onyx and a 24938 - Corroded Chain Boots.
    elsif (plugin::takeItems(25833 => 3, 24938 => 1)) {
      #:: Give a 55323 - Icefury Boots.
      quest::summonitem(55323);
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

