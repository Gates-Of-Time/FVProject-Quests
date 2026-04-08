sub EVENT_SAY { 
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    if ($text =~ /hail/i) {
      quest::say("The one thing this bar is sorely missin' is a good bard I tell ye. Ye know, someone to sing a catchy tune and tell us a story from time to time. Forgive me fer seemin' a bit sentimental but my family has always had close ties with bards datin' back ta even before we crossed the ocean. In fact, me great-great-grandfather used ta forge enchanted armor for the ancient bards of Faydark. Oh, the set of bard velium armor I could make if only I had the right components!");
    }
    elsif ($text =~ /what components/i) {
      quest::say("With the proper components I could make a helm, a breastplate, armplates, bracers, gauntlets, greaves, and even a pair o' boots!");
    }
    elsif ($text =~ /helm/i) {
      quest::say("To create a piece of armor to protect your skull I will require three pieces of crushed coral as well as a corroded plate helmet.");
    }
    elsif ($text =~ /breastplate/i) {
      quest::say("For the breastplate I will need a corroded breastplate and three flawless diamonds. Once I have them in my possession it will not take long to craft a sturdy breastplate.");
    }
    elsif ($text =~ /armplate/i) {
      quest::say("Protection for your arms will come at the price of a set of corroded plate vambraces and three flawed emeralds.");
    }
    elsif ($text =~ /bracer/i) {
      quest::say("For the bracers I will require a corroded plate bracer and a set of three crushed flame emeralds. Return to me if you happen to find these things in your travels.");
    }
    elsif ($text =~ /gauntlet/i) {
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
      #:: Give a 31036 - Resonant Breastplate.
      quest::summonitem(31036); 
      #:: Grant a large amount of experience.
      quest::exp(100000); 
      #:: Set factions
      quest::faction(406,20);  #:: + Coldain
      quest::faction(405,20);  #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well."); 
    } 
    #:: Match three 25821 - Flawed Emerald and a 24930 - Corroded Armplate.
    elsif (plugin::takeItems(25821 => 3, 24930 => 1)) {
      #:: Give a 31037 - Resonant Armplate.
      quest::summonitem(31037); 
      #:: Grant a large amount of experience.
      quest::exp(100000); 
      #:: Set factions
      quest::faction(406,20);  #:: + Coldain
      quest::faction(405,20);  #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");     
    } 
    #:: Match three 25825 - Flawed Sea Sapphire and a 24929 - Corroded Plate Greaves.
    elsif (plugin::takeItems(25825 => 3, 24929 => 1)) {
      #:: Give a 31040 - Resonant Greaves.
      quest::summonitem(31040); 
      #:: Grant a large amount of experience.
      quest::exp(100000); 
      #:: Set factions
      quest::faction(406,20);  #:: + Coldain
      quest::faction(405,20);  #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well."); 
    } 
    #:: Match three 25832 - Crushed Topaz and a 24934 - Corroded Plate Gauntlets.
    elsif (plugin::takeItems(25832 => 3, 24934 => 1)) {
      #:: Give a 31039 - Resonant Gauntlets.
      quest::summonitem(31039); 
      #:: Grant a large amount of experience.
      quest::exp(100000); 
      #:: Set factions
      quest::faction(406,20);  #:: + Coldain
      quest::faction(405,20);  #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well.");  
    } 
    #:: Match three 25831 - Crushed Coral and a 24933 - Corroded Plate Helmet.
    elsif (plugin::takeItems(25831 => 3, 24933 => 1)) {
      #:: Give a 31035 - Resonant Helm.
      quest::summonitem(31035); 
      #:: Grant a large amount of experience.
      quest::exp(100000); 
      #:: Set factions
      quest::faction(406,20);  #:: + Coldain
      quest::faction(405,20);  #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well."); 
    } 
    #:: Match three 25838 - Crushed Flame Emerald and a 24932 - Corroded Plate Bracer.
    elsif (plugin::takeItems(25838 => 3, 24932 => 1)) {
      #:: Give a 31038 - Resonant Bracer.
      quest::summonitem(31038); 
      #:: Grant a large amount of experience.
      quest::exp(100000); 
      #:: Set factions
      quest::faction(406,20);  #:: + Coldain
      quest::faction(405,20);  #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      quest::say("You have done well."); 
    } 
    #:: Match three 25833 - Crushed Black Marble and a 24931 - Corroded Plate Boots.
    elsif (plugin::takeItems(25833 => 3, 24931 => 1)) {
      #:: Give a 31041 - Resonant Boots.
      quest::summonitem(31041); 
      #:: Grant a large amount of experience.
      quest::exp(100000); 
      #:: Set factions
      quest::faction(406,20);  #:: + Coldain
      quest::faction(405,20);  #:: + Dain Frostreaver IV
      quest::faction(419,-60); #:: - Kromrif
      quest::faction(448,-60); #:: - Kromzek
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
 
