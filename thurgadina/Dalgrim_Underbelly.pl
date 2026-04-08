sub EVENT_SAY {
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    if ($text =~ /hail/i) {
      quest::say("I wasn't always just a merchant, ye know, I used to work at the temple and spent most of my time in the study of ancient texts and arts. I actually learned a lot about the dark arts in those days. Ye know... necromancy. Oh, I'd never touch the stuff, mind ye, but I'll bet I could make a fine set of plate fer shadowknights if'n I had the right materials.");
    }
    elsif ($text =~ /right materials/i) {
      quest::say("Glad to see ye're interested, $name. The materials would vary by the piece of armor o' course. I could probably forge a fine set of bracers, gauntlets, greaves, boots, armplates, a helm, or a breastplate.");
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
      #:: Give a 31000 - Dark Runed Crown.
      quest::summonitem(31000);
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
      #:: Give a 31001 - Dark Runed Breastplate.
      quest::summonitem(31001);
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
      #:: Give a 31002 - Dark Runed Vambraces.
      quest::summonitem(31002);
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
      #:: Give a 31003 - Dark Runed Bracer.
      quest::summonitem(31003);
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
      #:: Give a 31004 - Dark Runed Gauntlets.
      quest::summonitem(31004);
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
      #:: Give a 31005 - Dark Runed Greaves.
      quest::summonitem(31005);
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
      #:: Give a 31006 - Dark Runed Boots.
      quest::summonitem(31006);
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

