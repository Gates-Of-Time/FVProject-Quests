sub EVENT_SAY {
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    if ($text =~ /hail/i) {
      quest::say("Greetings to you. You are far away from your homelands, stranger. I am looking for someone. We here at the Temple of Lore are always seeking fellow priests of various faiths. Tell me, $race, are you a cleric?");
    }
    elsif ($text =~ /i am a cleric/i) {
      quest::say("Ah, a most pious one indeed. I sense the aura of your devotion and conviction and they are strong about you. A shame you are so short-lived. But I see potential in you and for that I shall aid you in your calling, cleric. Do you wish my aid?");
    }
    elsif ($text =~ /i wish your aid/i) {
      quest::say("Then I have a set of goals for you.  Once you have achieved them, you shall be rewarded with such as these: a helm, a breastplate, armplates, bracers, gauntlets, greaves and boots.  May they protect you from your enemies.");
    }
    elsif ($text =~ /helm/i) {
      quest::say("Those who are wise as we are know that protection of the head is most important.  I may be able to forge you something most interesting if you were to bring me a corroded plate helm and three pieces of crushed onyx sapphire.");
    }
    elsif ($text =~ /breastplate/i) {
      quest::say("If you find a corroded breastplate and three pieces of black marble bring them to me and I shall attempt to create an enchanted breastplate that will serve you well.");
    }
    elsif ($text =~ /armplates/i) {
      quest::say("Three jaundice gems and a set of corroded plate vambraces might be an interesting combination.  The powers of the gems may be harvested to imbue the vambraces.");
    }
    elsif ($text =~ /bracers/i) {
      quest::say("Bracers are quite easy to imbue.  Simply find three crushed opals and a corroded plate bracer and I will complete the ritual to enchant them.");
    }
    elsif ($text =~ /boots/i) {
      quest::say("Simply bring me a set of three crushed flame emeralds and a pair of corroded plate boots and I will imbue them.  I bid you good luck in finding such things.");
    }
    elsif ($text =~ /gauntlets/i) {
      quest::say("Strong protection for one's hands is important.  I may be able to craft you a set of powerful plate gauntlets if you find a set of corroded plate gauntlets and three crushed lava rubies.");
    }
    elsif ($text =~ /greaves/i) {
      quest::say("'A set of corroded greaves might be salvageable if you were to find three chipped onyx sapphires. With the right techniques almost anything is possible.");
    }
  }
  else {
    quest::say("I do not know you well enough to entrust you with such a quest, yet.");
  }
}

sub EVENT_SIGNAL {
  #:: Match signal "99" from Thurgadin >> Grand_Historian_Thoridain (115135)
  if ($signal == 99) {
    quest::say("The Grand Historian cannot be disturbed right now. Loremaster Borannin will assist you if you seek to perform duties for the crown. If you wish to learn more of our history and culture please speak to the loremasters in the Temple's library here.");
  }
}

sub EVENT_ITEM {
  #:: Match if faction is Kindly or better
  if ($faction <= 3) {
    #:: Match three 25805 - Black Marble and a 24928 - Corroded Breastplate.
    if (plugin::takeItems(25805 => 3, 24928 => 1)) {
      #:: Give a 31043 - Breastplate of Forbidden Rites.
      quest::summonitem(31043);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);   #:: + Coldain
      quest::faction(405,20);   #:: + Dain Frostreaver IV
      quest::faction(419,-60);  #:: - Kromrif
      quest::faction(448,-60);  #:: - Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25815 - Jaundice Gems and a 24930 - Corroded Plate Vambraces.
    elsif (plugin::takeItems(25815 => 3, 24930 => 1)) {
      #:: Give a 31044 - Vambraces of Forbidden Rites.
      quest::summonitem(31044);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);   #:: + Coldain
      quest::faction(405,20);   #:: + Dain Frostreaver IV
      quest::faction(419,-60);  #:: - Kromrif
      quest::faction(448,-60);  #:: - Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25827 - Chipped Onyx Sapphire and a 24929 - Corroded Plate Greaves.
    elsif (plugin::takeItems(25827 => 3, 24929 => 1)) {
      #:: Give a 31047 - Greaves of Forbidden Rites.
      quest::summonitem(31047);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);   #:: + Coldain
      quest::faction(405,20);   #:: + Dain Frostreaver IV
      quest::faction(419,-60);  #:: - Kromrif
      quest::faction(448,-60);  #:: - Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25840 - Crushed Lava Ruby and a 24934 - Corroded Plate Gauntlets.
    elsif (plugin::takeItems(25840 => 3, 24934 => 1)) {
      #:: Give a 31046 - Gauntlets of Forbidden Rites.
      quest::summonitem(31046);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);   #:: + Coldain
      quest::faction(405,20);   #:: + Dain Frostreaver IV
      quest::faction(419,-60);  #:: - Kromrif
      quest::faction(448,-60);  #:: - Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25841 - Crushed Onyx Sapphire and a 24933 - Corroded Plate Helmet.
    elsif (plugin::takeItems(25841 => 3, 24933 => 1)) {
      #:: Give a 31042 - Crown of Forbidden Rites.
      quest::summonitem(31042);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);   #:: + Coldain
      quest::faction(405,20);   #:: + Dain Frostreaver IV
      quest::faction(419,-60);  #:: - Kromrif
      quest::faction(448,-60);  #:: - Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25836 - Crushed Topaz and a 24932 - Corroded Plate Bracer.
    elsif (plugin::takeItems(25836 => 3, 24932 => 1)) {
      #:: Give a 31045 - Bracers of Forbidden Rites.
      quest::summonitem(31045);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);   #:: + Coldain
      quest::faction(405,20);   #:: + Dain Frostreaver IV
      quest::faction(419,-60);  #:: - Kromrif
      quest::faction(448,-60);  #:: - Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      quest::say("You have done well.");
    }
    #:: Match three 25838 - Crushed Flame Emerald and a 24931 - Corroded Plate Boots.
    elsif (plugin::takeItems(25838 => 3, 24931 => 1)) {
      #:: Give a 31048 - Boots of Forbidden Rites.
      quest::summonitem(31048);
      #:: Grant a large amount of experience.
      quest::exp(100000);
      #:: Set factions
      quest::faction(406,20);   #:: + Coldain
      quest::faction(405,20);   #:: + Dain Frostreaver IV
      quest::faction(419,-60);  #:: - Kromrif
      quest::faction(448,-60);  #:: - Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
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

