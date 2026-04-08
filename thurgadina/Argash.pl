sub EVENT_SAY {
  #:: Match if faction is Kindly or worse
  if ($faction <= 3) {
    if ($text =~ /hail/i) {
      quest::say("Greetin's, $name, you look like a $race who knows the value of a good bow when ye see one. I'll let ye in on a li'l secret, the bow is the greatest of all weapons as it allows you to inflict maximum punishment on yer foes with minimum risk. How can ye possibly go wrong? Or better yet, if'n ye be a ranger, I can see my way clear to making you a coif, tunic, sleeves, bracer, gauntlets, leggings, or boots that I'm sure ye would enjoy.");
    }
    elsif ($text =~ /coif/i) {
      quest::say("To create a piece of armor to protect your sensitive skull. I will require three pieces of crushed coral as well as a corroded chain coif.");
    }
    elsif ($text =~ /tunic/i) {
      quest::say("To forge a spectacular chain tunic I will require three flawless diamonds and a corroded chain tunic.  With the gems and my skills I may be able to draw out some of its magical powers.");
    }
    elsif ($text =~ /sleeves/i) {
      quest::say("Protection for your arms will come at the price of three flawed emeralds and a set of corroded chain sleeves.");
    }
    elsif ($text =~ /bracer/i) {
      quest::say("For the bracers, I will require a corroded chain bracer as well as three crushed flame emeralds.  Return to me when you find such things, $name.");
    }
    elsif ($text =~ /gauntlets/i) {
      quest::say("Protecting your hands is very important.  I can forge protection for your hands if you bring me a pair of corroded chain gauntlets and three crushed topaz.");
    }
    elsif ($text =~ /leggings/i) {
      quest::say("A set of corroded chain leggings might be salvageable if you were to find three flawed sea sapphires.  With the right techniques and ingredients almost anything is possible.");
    }
    elsif ($text =~ /boots/i) {
      quest::say("We use our feet so often, should not they be protected as well as any other portion of our bodies?  If you seek fine protection for your feet, return to me with three pieces of crushed black marble and a set of corroded chain boots.");
    }
  }
  else {
    quest::say("I do not know you well enough to entrust you with such a quest, yet.");
  }
}

sub EVENT_ITEM {
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    #:: Match three 25831 - Crushed Coral and a 24940 - Corroded Chain Coif.
    if (plugin::takeItems(25831 => 3, 24940 => 1)) {
      #:: Give a 31014 - Runed Scout's Helm.
      quest::summonitem(31014);
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
    #:: Match three 25814 - Flawless Diamond and a 24935 - Corroded Chain Tunic.
    elsif (plugin::takeItems(25814 => 3, 24935 => 1)) {
      #:: Give a 31015 - Runed Scout's Breastplate.
      quest::summonitem(31015);
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
      #:: Give a 31016 - Runed Scout's Vambraces.
      quest::summonitem(31016);
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
    #:: Match three 25838 - Crushed Flame Emerald and a 24939 - Corroded Chain Bracer.
    elsif (plugin::takeItems(25838 => 3, 24939 => 1)) {
      #:: Give a 31017 - Runed Scout's Bracer
      quest::summonitem(31017);
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
    #:: Match three 25832 - Crushed Topaz and a 24941 - Corroded Chain Gauntlets.
    elsif (plugin::takeItems(25832 => 3, 24941 => 1)) {
      #:: Give a 31018 - Runed Scout's Gauntlets.
      quest::summonitem(31018);
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
    #:: Match three 25825 - Flawed Sea Sapphire and a 24936 - Corroded Chain Leggings.
    elsif (plugin::takeItems(25825 => 3, 24936 => 1)) {
      #:: Give a 31019 - Runed Scout's Greaves.
      quest::summonitem(31019);
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
    #:: Match three 25833 - Crushed Black Marble and a 24938 - Corroded Chain Boots.
    elsif (plugin::takeItems(25833 => 3, 24938 => 1)) {
      #:: Give a 31020 - Runed Scout's Boots.
      quest::summonitem(31020);
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

